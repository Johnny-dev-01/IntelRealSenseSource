# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitclone-lastrun.txt" AND EXISTS "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitinfo.txt" AND
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitclone-lastrun.txt" IS_NEWER_THAN "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitinfo.txt")
  message(VERBOSE
    "Avoiding repeated git clone, stamp file is up to date: "
    "'C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitclone-lastrun.txt'"
  )
  return()
endif()

# Even at VERBOSE level, we don't want to see the commands executed, but
# enabling them to be shown for DEBUG may be useful to help diagnose problems.
cmake_language(GET_MESSAGE_LOG_LEVEL active_log_level)
if(active_log_level MATCHES "DEBUG|TRACE")
  set(maybe_show_command COMMAND_ECHO STDOUT)
else()
  set(maybe_show_command "")
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "C:/Users/98938/Desktop/realsense/build/third-party/libusb"
  RESULT_VARIABLE error_code
  ${maybe_show_command}
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'C:/Users/98938/Desktop/realsense/build/third-party/libusb'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe"
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/ev-mp/libusb.git" "libusb"
    WORKING_DIRECTORY "C:/Users/98938/Desktop/realsense/build/third-party"
    RESULT_VARIABLE error_code
    ${maybe_show_command}
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(NOTICE "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/ev-mp/libusb.git'")
endif()

execute_process(
  COMMAND "C:/Program Files/Git/cmd/git.exe"
          checkout "2a7372db54094a406a755f0b8548b614ba8c78ec" --
  WORKING_DIRECTORY "C:/Users/98938/Desktop/realsense/build/third-party/libusb"
  RESULT_VARIABLE error_code
  ${maybe_show_command}
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '2a7372db54094a406a755f0b8548b614ba8c78ec'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "C:/Program Files/Git/cmd/git.exe" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "C:/Users/98938/Desktop/realsense/build/third-party/libusb"
    RESULT_VARIABLE error_code
    ${maybe_show_command}
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'C:/Users/98938/Desktop/realsense/build/third-party/libusb'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitinfo.txt" "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  ${maybe_show_command}
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/libusb-gitclone-lastrun.txt'")
endif()
