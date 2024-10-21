# Install script for directory: C:/Users/98938/Desktop/realsense/librealsense/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/realsense2")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/98938/Desktop/realsense/build/examples/hello-realsense/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/software-device/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/capture/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/callback/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/save-to-disk/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/multicam/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/pointcloud/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/align/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/align-gl/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/align-advanced/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/sensor-control/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/measure/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/C/depth/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/C/color/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/C/distance/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/post-processing/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/record-playback/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/motion/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/gl/cmake_install.cmake")
  include("C:/Users/98938/Desktop/realsense/build/examples/hdr/cmake_install.cmake")

endif()

