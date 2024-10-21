# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/98938/Desktop/realsense/build/third-party/json")
  file(MAKE_DIRECTORY "C:/Users/98938/Desktop/realsense/build/third-party/json")
endif()
file(MAKE_DIRECTORY
  "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/src/nlohmann_json-build"
  "C:/Users/98938/Desktop/realsense/build/external-projects/json-download"
  "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/tmp"
  "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/src/nlohmann_json-stamp"
  "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/src"
  "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/src/nlohmann_json-stamp"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/src/nlohmann_json-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/98938/Desktop/realsense/build/external-projects/json-download/src/nlohmann_json-stamp${cfgdir}") # cfgdir has leading slash
endif()
