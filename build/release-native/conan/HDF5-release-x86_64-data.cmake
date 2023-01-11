########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND hdf5_COMPONENT_NAMES hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl hdf5::hdf5_hl_cpp)
list(REMOVE_DUPLICATES hdf5_COMPONENT_NAMES)
list(APPEND hdf5_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES hdf5_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(hdf5_PACKAGE_FOLDER_RELEASE "/home/ilaria/.conan/data/hdf5/1.12.1/_/_/package/ea316f864147f31554b6fd8bb2d2e9b3d13f650e")
set(hdf5_BUILD_MODULES_PATHS_RELEASE )


set(hdf5_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_RES_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/res")
set(hdf5_DEFINITIONS_RELEASE )
set(hdf5_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_EXE_LINK_FLAGS_RELEASE )
set(hdf5_OBJECTS_RELEASE )
set(hdf5_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_COMPILE_OPTIONS_C_RELEASE )
set(hdf5_COMPILE_OPTIONS_CXX_RELEASE )
set(hdf5_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_LIBS_RELEASE hdf5_hl_cpp hdf5_hl hdf5_cpp hdf5)
set(hdf5_SYSTEM_LIBS_RELEASE dl m)
set(hdf5_FRAMEWORK_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(hdf5_FRAMEWORKS_RELEASE )
set(hdf5_BUILD_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/")


set(hdf5_COMPONENTS_RELEASE hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl hdf5::hdf5_hl_cpp)
########### COMPONENT hdf5::hdf5_hl_cpp VARIABLES ############################################

set(hdf5_hdf5_hdf5_hl_cpp_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include")
set(hdf5_hdf5_hdf5_hl_cpp_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_hl_cpp_RES_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/res")
set(hdf5_hdf5_hdf5_hl_cpp_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_hl_cpp_LIBS_RELEASE hdf5_hl_cpp)
set(hdf5_hdf5_hdf5_hl_cpp_SYSTEM_LIBS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORK_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_DEPENDENCIES_RELEASE hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl)
set(hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_cpp_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_hl_cpp_EXE_LINK_FLAGS_RELEASE}>
)
########### COMPONENT hdf5::hdf5_hl VARIABLES ############################################

set(hdf5_hdf5_hdf5_hl_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include")
set(hdf5_hdf5_hdf5_hl_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_hl_RES_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/res")
set(hdf5_hdf5_hdf5_hl_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_hl_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_hl_LIBS_RELEASE hdf5_hl)
set(hdf5_hdf5_hdf5_hl_SYSTEM_LIBS_RELEASE )
set(hdf5_hdf5_hdf5_hl_FRAMEWORK_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(hdf5_hdf5_hdf5_hl_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_hl_DEPENDENCIES_RELEASE hdf5::hdf5)
set(hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_hl_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_hl_EXE_LINK_FLAGS_RELEASE}>
)
########### COMPONENT hdf5::hdf5_cpp VARIABLES ############################################

set(hdf5_hdf5_hdf5_cpp_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include")
set(hdf5_hdf5_hdf5_cpp_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_cpp_RES_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/res")
set(hdf5_hdf5_hdf5_cpp_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_cpp_LIBS_RELEASE hdf5_cpp)
set(hdf5_hdf5_hdf5_cpp_SYSTEM_LIBS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_FRAMEWORK_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(hdf5_hdf5_hdf5_cpp_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_DEPENDENCIES_RELEASE hdf5::hdf5)
set(hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_cpp_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_cpp_EXE_LINK_FLAGS_RELEASE}>
)
########### COMPONENT hdf5::hdf5 VARIABLES ############################################

set(hdf5_hdf5_hdf5_INCLUDE_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/include"
			"${hdf5_PACKAGE_FOLDER_RELEASE}/include/hdf5")
set(hdf5_hdf5_hdf5_LIB_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/lib")
set(hdf5_hdf5_hdf5_RES_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/res")
set(hdf5_hdf5_hdf5_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_OBJECTS_RELEASE )
set(hdf5_hdf5_hdf5_COMPILE_DEFINITIONS_RELEASE )
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_C_RELEASE "")
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_CXX_RELEASE "")
set(hdf5_hdf5_hdf5_LIBS_RELEASE hdf5)
set(hdf5_hdf5_hdf5_SYSTEM_LIBS_RELEASE dl m)
set(hdf5_hdf5_hdf5_FRAMEWORK_DIRS_RELEASE "${hdf5_PACKAGE_FOLDER_RELEASE}/Frameworks")
set(hdf5_hdf5_hdf5_FRAMEWORKS_RELEASE )
set(hdf5_hdf5_hdf5_DEPENDENCIES_RELEASE ZLIB::ZLIB)
set(hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_EXE_LINK_FLAGS_RELEASE )
set(hdf5_hdf5_hdf5_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_EXE_LINK_FLAGS_RELEASE}>
)