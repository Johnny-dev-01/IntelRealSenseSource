#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "realsense2-gl::realsense2-gl" for configuration "RelWithDebInfo"
set_property(TARGET realsense2-gl::realsense2-gl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(realsense2-gl::realsense2-gl PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "C;CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/realsense2-gl.lib"
  )

list(APPEND _cmake_import_check_targets realsense2-gl::realsense2-gl )
list(APPEND _cmake_import_check_files_for_realsense2-gl::realsense2-gl "${_IMPORT_PREFIX}/lib/realsense2-gl.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
