########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND eigen_COMPONENT_NAMES Eigen3::Eigen)
list(REMOVE_DUPLICATES eigen_COMPONENT_NAMES)
set(eigen_FIND_DEPENDENCY_NAMES "")

########### VARIABLES #######################################################################
#############################################################################################
set(eigen_PACKAGE_FOLDER_DEBUG "/home/ilaria/.conan/data/eigen/3.4.0/_/_/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(eigen_BUILD_MODULES_PATHS_DEBUG )


set(eigen_INCLUDE_DIRS_DEBUG "${eigen_PACKAGE_FOLDER_DEBUG}/include/eigen3")
set(eigen_RES_DIRS_DEBUG )
set(eigen_DEFINITIONS_DEBUG )
set(eigen_SHARED_LINK_FLAGS_DEBUG )
set(eigen_EXE_LINK_FLAGS_DEBUG )
set(eigen_OBJECTS_DEBUG )
set(eigen_COMPILE_DEFINITIONS_DEBUG )
set(eigen_COMPILE_OPTIONS_C_DEBUG )
set(eigen_COMPILE_OPTIONS_CXX_DEBUG )
set(eigen_LIB_DIRS_DEBUG "${eigen_PACKAGE_FOLDER_DEBUG}/lib")
set(eigen_LIBS_DEBUG )
set(eigen_SYSTEM_LIBS_DEBUG m)
set(eigen_FRAMEWORK_DIRS_DEBUG )
set(eigen_FRAMEWORKS_DEBUG )
set(eigen_BUILD_DIRS_DEBUG )


set(eigen_COMPONENTS_DEBUG Eigen3::Eigen)
########### COMPONENT Eigen3::Eigen VARIABLES ############################################

set(eigen_Eigen3_Eigen_INCLUDE_DIRS_DEBUG "${eigen_PACKAGE_FOLDER_DEBUG}/include/eigen3")
set(eigen_Eigen3_Eigen_LIB_DIRS_DEBUG "${eigen_PACKAGE_FOLDER_DEBUG}/lib")
set(eigen_Eigen3_Eigen_RES_DIRS_DEBUG )
set(eigen_Eigen3_Eigen_DEFINITIONS_DEBUG )
set(eigen_Eigen3_Eigen_OBJECTS_DEBUG )
set(eigen_Eigen3_Eigen_COMPILE_DEFINITIONS_DEBUG )
set(eigen_Eigen3_Eigen_COMPILE_OPTIONS_C_DEBUG "")
set(eigen_Eigen3_Eigen_COMPILE_OPTIONS_CXX_DEBUG "")
set(eigen_Eigen3_Eigen_LIBS_DEBUG )
set(eigen_Eigen3_Eigen_SYSTEM_LIBS_DEBUG m)
set(eigen_Eigen3_Eigen_FRAMEWORK_DIRS_DEBUG )
set(eigen_Eigen3_Eigen_FRAMEWORKS_DEBUG )
set(eigen_Eigen3_Eigen_DEPENDENCIES_DEBUG )
set(eigen_Eigen3_Eigen_SHARED_LINK_FLAGS_DEBUG )
set(eigen_Eigen3_Eigen_EXE_LINK_FLAGS_DEBUG )
set(eigen_Eigen3_Eigen_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${eigen_Eigen3_Eigen_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${eigen_Eigen3_Eigen_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${eigen_Eigen3_Eigen_EXE_LINK_FLAGS_DEBUG}>
)