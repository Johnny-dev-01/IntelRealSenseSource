#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "realsense2-gl::realsense2-gl" for configuration "Debug"
set_property(TARGET realsense2-gl::realsense2-gl APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(realsense2-gl::realsense2-gl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/realsense2-gld.lib"
  )

list(APPEND _cmake_import_check_targets realsense2-gl::realsense2-gl )
list(APPEND _cmake_import_check_files_for_realsense2-gl::realsense2-gl "${_IMPORT_PREFIX}/lib/realsense2-gld.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
