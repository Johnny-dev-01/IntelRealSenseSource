#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "pyrealsense2::pyrsutils" for configuration "Debug"
set_property(TARGET pyrealsense2::pyrsutils APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(pyrealsense2::pyrsutils PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/pyrsutilsd.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/pyrsutilsd.cp312-win_amd64.pyd"
  )

list(APPEND _cmake_import_check_targets pyrealsense2::pyrsutils )
list(APPEND _cmake_import_check_files_for_pyrealsense2::pyrsutils "${_IMPORT_PREFIX}/lib/pyrsutilsd.lib" "${_IMPORT_PREFIX}/bin/pyrsutilsd.cp312-win_amd64.pyd" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
