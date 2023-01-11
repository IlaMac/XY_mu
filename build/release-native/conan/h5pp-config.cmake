########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/h5ppTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${h5pp_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(h5pp_VERSION_STRING "1.10.0")
set(h5pp_INCLUDE_DIRS ${h5pp_INCLUDE_DIRS_RELEASE} )
set(h5pp_INCLUDE_DIR ${h5pp_INCLUDE_DIRS_RELEASE} )
set(h5pp_LIBRARIES ${h5pp_LIBRARIES_RELEASE} )
set(h5pp_DEFINITIONS ${h5pp_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${h5pp_BUILD_MODULES_PATHS_RELEASE} )
    message(STATUS "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


