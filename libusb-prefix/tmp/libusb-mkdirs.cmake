# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/98938/Desktop/realsense/build/third-party/libusb")
  file(MAKE_DIRECTORY "C:/Users/98938/Desktop/realsense/build/third-party/libusb")
endif()
file(MAKE_DIRECTORY
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-build"
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix"
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix/tmp"
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp"
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src"
  "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/98938/Desktop/realsense/build/libusb-prefix/src/libusb-stamp${cfgdir}") # cfgdir has leading slash
endif()
