########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND h5pp_COMPONENT_NAMES h5pp::headers h5pp::deps h5pp::flags)
list(REMOVE_DUPLICATES h5pp_COMPONENT_NAMES)
list(APPEND h5pp_FIND_DEPENDENCY_NAMES HDF5 Eigen3 spdlog)
list(REMOVE_DUPLICATES h5pp_FIND_DEPENDENCY_NAMES)
set(HDF5_FIND_MODE "NO_MODULE")
set(Eigen3_FIND_MODE "NO_MODULE")
set(spdlog_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(h5pp_PACKAGE_FOLDER_RELEASE "/home/ilaria/.conan/data/h5pp/1.10.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(h5pp_BUILD_MODULES_PATHS_RELEASE )


set(h5pp_INCLUDE_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/include")
set(h5pp_RES_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/res")
set(h5pp_DEFINITIONS_RELEASE "-DH5PP_USE_EIGEN3"
			"-DH5PP_USE_SPDLOG"
			"-DH5PP_USE_FMT")
set(h5pp_SHARED_LINK_FLAGS_RELEASE )
set(h5pp_EXE_LINK_FLAGS_RELEASE )
set(h5pp_OBJECTS_RELEASE )
set(h5pp_COMPILE_DEFINITIONS_RELEASE "H5PP_USE_EIGEN3"
			"H5PP_USE_SPDLOG"
			"H5PP_USE_FMT")
set(h5pp_COMPILE_OPTIONS_C_RELEASE )
set(h5pp_COMPILE_OPTIONS_CXX_RELEASE )
set(h5pp_LIB_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/lib")
set(h5pp_LIBS_RELEASE )
set(h5pp_SYSTEM_LIBS_RELEASE )
set(h5pp_FRAMEWORK_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(h5pp_FRAMEWORKS_RELEASE )
set(h5pp_BUILD_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/")


set(h5pp_COMPONENTS_RELEASE h5pp::headers h5pp::deps h5pp::flags)
########### COMPONENT h5pp::flags VARIABLES ############################################

set(h5pp_h5pp_flags_INCLUDE_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/include")
set(h5pp_h5pp_flags_LIB_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/lib")
set(h5pp_h5pp_flags_RES_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/res")
set(h5pp_h5pp_flags_DEFINITIONS_RELEASE "-DH5PP_USE_EIGEN3"
			"-DH5PP_USE_SPDLOG"
			"-DH5PP_USE_FMT")
set(h5pp_h5pp_flags_OBJECTS_RELEASE )
set(h5pp_h5pp_flags_COMPILE_DEFINITIONS_RELEASE "H5PP_USE_EIGEN3"
			"H5PP_USE_SPDLOG"
			"H5PP_USE_FMT")
set(h5pp_h5pp_flags_COMPILE_OPTIONS_C_RELEASE "")
set(h5pp_h5pp_flags_COMPILE_OPTIONS_CXX_RELEASE "")
set(h5pp_h5pp_flags_LIBS_RELEASE )
set(h5pp_h5pp_flags_SYSTEM_LIBS_RELEASE )
set(h5pp_h5pp_flags_FRAMEWORK_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(h5pp_h5pp_flags_FRAMEWORKS_RELEASE )
set(h5pp_h5pp_flags_DEPENDENCIES_RELEASE )
set(h5pp_h5pp_flags_SHARED_LINK_FLAGS_RELEASE )
set(h5pp_h5pp_flags_EXE_LINK_FLAGS_RELEASE )
set(h5pp_h5pp_flags_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${h5pp_h5pp_flags_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${h5pp_h5pp_flags_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${h5pp_h5pp_flags_EXE_LINK_FLAGS_RELEASE}>
)
########### COMPONENT h5pp::deps VARIABLES ############################################

set(h5pp_h5pp_deps_INCLUDE_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/include")
set(h5pp_h5pp_deps_LIB_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/lib")
set(h5pp_h5pp_deps_RES_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/res")
set(h5pp_h5pp_deps_DEFINITIONS_RELEASE )
set(h5pp_h5pp_deps_OBJECTS_RELEASE )
set(h5pp_h5pp_deps_COMPILE_DEFINITIONS_RELEASE )
set(h5pp_h5pp_deps_COMPILE_OPTIONS_C_RELEASE "")
set(h5pp_h5pp_deps_COMPILE_OPTIONS_CXX_RELEASE "")
set(h5pp_h5pp_deps_LIBS_RELEASE )
set(h5pp_h5pp_deps_SYSTEM_LIBS_RELEASE )
set(h5pp_h5pp_deps_FRAMEWORK_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(h5pp_h5pp_deps_FRAMEWORKS_RELEASE )
set(h5pp_h5pp_deps_DEPENDENCIES_RELEASE HDF5::HDF5 Eigen3::Eigen spdlog::spdlog)
set(h5pp_h5pp_deps_SHARED_LINK_FLAGS_RELEASE )
set(h5pp_h5pp_deps_EXE_LINK_FLAGS_RELEASE )
set(h5pp_h5pp_deps_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${h5pp_h5pp_deps_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${h5pp_h5pp_deps_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${h5pp_h5pp_deps_EXE_LINK_FLAGS_RELEASE}>
)
########### COMPONENT h5pp::headers VARIABLES ############################################

set(h5pp_h5pp_headers_INCLUDE_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/include")
set(h5pp_h5pp_headers_LIB_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/lib")
set(h5pp_h5pp_headers_RES_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/res")
set(h5pp_h5pp_headers_DEFINITIONS_RELEASE )
set(h5pp_h5pp_headers_OBJECTS_RELEASE )
set(h5pp_h5pp_headers_COMPILE_DEFINITIONS_RELEASE )
set(h5pp_h5pp_headers_COMPILE_OPTIONS_C_RELEASE "")
set(h5pp_h5pp_headers_COMPILE_OPTIONS_CXX_RELEASE "")
set(h5pp_h5pp_headers_LIBS_RELEASE )
set(h5pp_h5pp_headers_SYSTEM_LIBS_RELEASE )
set(h5pp_h5pp_headers_FRAMEWORK_DIRS_RELEASE "${h5pp_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(h5pp_h5pp_headers_FRAMEWORKS_RELEASE )
set(h5pp_h5pp_headers_DEPENDENCIES_RELEASE )
set(h5pp_h5pp_headers_SHARED_LINK_FLAGS_RELEASE )
set(h5pp_h5pp_headers_EXE_LINK_FLAGS_RELEASE )
set(h5pp_h5pp_headers_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${h5pp_h5pp_headers_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${h5pp_h5pp_headers_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${h5pp_h5pp_headers_EXE_LINK_FLAGS_RELEASE}>
)