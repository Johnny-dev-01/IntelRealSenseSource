#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "pyrealsense2::pyrsutils" for configuration "RelWithDebInfo"
set_property(TARGET pyrealsense2::pyrsutils APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(pyrealsense2::pyrsutils PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/pyrsutils.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/pyrsutils.cp312-win_amd64.pyd"
  )

list(APPEND _cmake_import_check_targets pyrealsense2::pyrsutils )
list(APPEND _cmake_import_check_files_for_pyrealsense2::pyrsutils "${_IMPORT_PREFIX}/lib/pyrsutils.lib" "${_IMPORT_PREFIX}/bin/pyrsutils.cp312-win_amd64.pyd" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
