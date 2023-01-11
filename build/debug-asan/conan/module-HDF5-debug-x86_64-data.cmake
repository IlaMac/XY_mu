########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND hdf5_COMPONENT_NAMES hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl hdf5::hdf5_hl_cpp)
list(REMOVE_DUPLICATES hdf5_COMPONENT_NAMES)
list(APPEND hdf5_FIND_DEPENDENCY_NAMES ZLIB)
list(REMOVE_DUPLICATES hdf5_FIND_DEPENDENCY_NAMES)
set(ZLIB_FIND_MODE "MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(hdf5_PACKAGE_FOLDER_DEBUG "/home/ilaria/.conan/data/hdf5/1.12.1/_/_/package/2a921812645f22270c437e9c77690ca3de879b2b")
set(hdf5_BUILD_MODULES_PATHS_DEBUG )


set(hdf5_INCLUDE_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/include"
			"${hdf5_PACKAGE_FOLDER_DEBUG}/include/hdf5")
set(hdf5_RES_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/res")
set(hdf5_DEFINITIONS_DEBUG )
set(hdf5_SHARED_LINK_FLAGS_DEBUG )
set(hdf5_EXE_LINK_FLAGS_DEBUG )
set(hdf5_OBJECTS_DEBUG )
set(hdf5_COMPILE_DEFINITIONS_DEBUG )
set(hdf5_COMPILE_OPTIONS_C_DEBUG )
set(hdf5_COMPILE_OPTIONS_CXX_DEBUG )
set(hdf5_LIB_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/lib")
set(hdf5_LIBS_DEBUG hdf5_hl_cpp_debug hdf5_hl_debug hdf5_cpp_debug hdf5_debug)
set(hdf5_SYSTEM_LIBS_DEBUG dl m)
set(hdf5_FRAMEWORK_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(hdf5_FRAMEWORKS_DEBUG )
set(hdf5_BUILD_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/")


set(hdf5_COMPONENTS_DEBUG hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl hdf5::hdf5_hl_cpp)
########### COMPONENT hdf5::hdf5_hl_cpp VARIABLES ############################################

set(hdf5_hdf5_hdf5_hl_cpp_INCLUDE_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/include")
set(hdf5_hdf5_hdf5_hl_cpp_LIB_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/lib")
set(hdf5_hdf5_hdf5_hl_cpp_RES_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/res")
set(hdf5_hdf5_hdf5_hl_cpp_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_OBJECTS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_C_DEBUG "")
set(hdf5_hdf5_hdf5_hl_cpp_COMPILE_OPTIONS_CXX_DEBUG "")
set(hdf5_hdf5_hdf5_hl_cpp_LIBS_DEBUG hdf5_hl_cpp_debug)
set(hdf5_hdf5_hdf5_hl_cpp_SYSTEM_LIBS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORK_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(hdf5_hdf5_hdf5_hl_cpp_FRAMEWORKS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_DEPENDENCIES_DEBUG hdf5::hdf5 hdf5::hdf5_cpp hdf5::hdf5_hl)
set(hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_EXE_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_hl_cpp_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_hl_cpp_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_hl_cpp_EXE_LINK_FLAGS_DEBUG}>
)
########### COMPONENT hdf5::hdf5_hl VARIABLES ############################################

set(hdf5_hdf5_hdf5_hl_INCLUDE_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/include")
set(hdf5_hdf5_hdf5_hl_LIB_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/lib")
set(hdf5_hdf5_hdf5_hl_RES_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/res")
set(hdf5_hdf5_hdf5_hl_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_hl_OBJECTS_DEBUG )
set(hdf5_hdf5_hdf5_hl_COMPILE_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_C_DEBUG "")
set(hdf5_hdf5_hdf5_hl_COMPILE_OPTIONS_CXX_DEBUG "")
set(hdf5_hdf5_hdf5_hl_LIBS_DEBUG hdf5_hl_debug)
set(hdf5_hdf5_hdf5_hl_SYSTEM_LIBS_DEBUG )
set(hdf5_hdf5_hdf5_hl_FRAMEWORK_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(hdf5_hdf5_hdf5_hl_FRAMEWORKS_DEBUG )
set(hdf5_hdf5_hdf5_hl_DEPENDENCIES_DEBUG hdf5::hdf5)
set(hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_hl_EXE_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_hl_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_hl_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_hl_EXE_LINK_FLAGS_DEBUG}>
)
########### COMPONENT hdf5::hdf5_cpp VARIABLES ############################################

set(hdf5_hdf5_hdf5_cpp_INCLUDE_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/include")
set(hdf5_hdf5_hdf5_cpp_LIB_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/lib")
set(hdf5_hdf5_hdf5_cpp_RES_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/res")
set(hdf5_hdf5_hdf5_cpp_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_OBJECTS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_COMPILE_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_C_DEBUG "")
set(hdf5_hdf5_hdf5_cpp_COMPILE_OPTIONS_CXX_DEBUG "")
set(hdf5_hdf5_hdf5_cpp_LIBS_DEBUG hdf5_cpp_debug)
set(hdf5_hdf5_hdf5_cpp_SYSTEM_LIBS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_FRAMEWORK_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(hdf5_hdf5_hdf5_cpp_FRAMEWORKS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_DEPENDENCIES_DEBUG hdf5::hdf5)
set(hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_EXE_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_cpp_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_cpp_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_cpp_EXE_LINK_FLAGS_DEBUG}>
)
########### COMPONENT hdf5::hdf5 VARIABLES ############################################

set(hdf5_hdf5_hdf5_INCLUDE_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/include"
			"${hdf5_PACKAGE_FOLDER_DEBUG}/include/hdf5")
set(hdf5_hdf5_hdf5_LIB_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/lib")
set(hdf5_hdf5_hdf5_RES_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/res")
set(hdf5_hdf5_hdf5_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_OBJECTS_DEBUG )
set(hdf5_hdf5_hdf5_COMPILE_DEFINITIONS_DEBUG )
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_C_DEBUG "")
set(hdf5_hdf5_hdf5_COMPILE_OPTIONS_CXX_DEBUG "")
set(hdf5_hdf5_hdf5_LIBS_DEBUG hdf5_debug)
set(hdf5_hdf5_hdf5_SYSTEM_LIBS_DEBUG dl m)
set(hdf5_hdf5_hdf5_FRAMEWORK_DIRS_DEBUG "${hdf5_PACKAGE_FOLDER_DEBUG}/Frameworks")
set(hdf5_hdf5_hdf5_FRAMEWORKS_DEBUG )
set(hdf5_hdf5_hdf5_DEPENDENCIES_DEBUG ZLIB::ZLIB)
set(hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_EXE_LINK_FLAGS_DEBUG )
set(hdf5_hdf5_hdf5_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${hdf5_hdf5_hdf5_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${hdf5_hdf5_hdf5_EXE_LINK_FLAGS_DEBUG}>
)