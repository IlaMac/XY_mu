# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################

set(eigen_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${eigen_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${eigen_COMPILE_OPTIONS_C_DEBUG}>")

set(eigen_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${eigen_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${eigen_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${eigen_EXE_LINK_FLAGS_DEBUG}>")

set(eigen_FRAMEWORKS_FOUND_DEBUG "") # Will be filled later
conan_find_apple_frameworks(eigen_FRAMEWORKS_FOUND_DEBUG "${eigen_FRAMEWORKS_DEBUG}" "${eigen_FRAMEWORK_DIRS_DEBUG}")

set(eigen_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET eigen_DEPS_TARGET)
    add_library(eigen_DEPS_TARGET INTERFACE)
endif()

set_property(TARGET eigen_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Debug>:${eigen_FRAMEWORKS_FOUND_DEBUG}>
             $<$<CONFIG:Debug>:${eigen_SYSTEM_LIBS_DEBUG}>
             $<$<CONFIG:Debug>:>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### eigen_DEPS_TARGET to all of them
conan_package_library_targets("${eigen_LIBS_DEBUG}"    # libraries
                              "${eigen_LIB_DIRS_DEBUG}" # package_libdir
                              eigen_DEPS_TARGET
                              eigen_LIBRARIES_TARGETS  # out_libraries_targets
                              "_DEBUG"
                              "eigen")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${eigen_BUILD_DIRS_DEBUG} ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH ${eigen_BUILD_DIRS_DEBUG} ${CMAKE_PREFIX_PATH})


########## COMPONENTS TARGET PROPERTIES Debug ########################################

    ########## COMPONENT Eigen3::Eigen #############

        set(eigen_Eigen3_Eigen_FRAMEWORKS_FOUND_DEBUG "")
        conan_find_apple_frameworks(eigen_Eigen3_Eigen_FRAMEWORKS_FOUND_DEBUG "${eigen_Eigen3_Eigen_FRAMEWORKS_DEBUG}" "${eigen_Eigen3_Eigen_FRAMEWORK_DIRS_DEBUG}")

        set(eigen_Eigen3_Eigen_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET eigen_Eigen3_Eigen_DEPS_TARGET)
            add_library(eigen_Eigen3_Eigen_DEPS_TARGET INTERFACE)
        endif()

        set_property(TARGET eigen_Eigen3_Eigen_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_FRAMEWORKS_FOUND_DEBUG}>
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_SYSTEM_LIBS_DEBUG}>
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_DEPENDENCIES_DEBUG}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'eigen_Eigen3_Eigen_DEPS_TARGET' to all of them
        conan_package_library_targets("${eigen_Eigen3_Eigen_LIBS_DEBUG}"
                                      "${eigen_Eigen3_Eigen_LIB_DIRS_DEBUG}"
                                      eigen_Eigen3_Eigen_DEPS_TARGET
                                      eigen_Eigen3_Eigen_LIBRARIES_TARGETS
                                      "_DEBUG"
                                      "eigen_Eigen3_Eigen")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET Eigen3::Eigen
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_OBJECTS_DEBUG}>
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_LIBRARIES_TARGETS}>
                     APPEND)

        if("${eigen_Eigen3_Eigen_LIBS_DEBUG}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET Eigen3::Eigen
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         eigen_Eigen3_Eigen_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET Eigen3::Eigen PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_LINKER_FLAGS_DEBUG}> APPEND)
        set_property(TARGET Eigen3::Eigen PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_INCLUDE_DIRS_DEBUG}> APPEND)
        set_property(TARGET Eigen3::Eigen PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Debug>:${eigen_Eigen3_Eigen_COMPILE_DEFINITIONS_DEBUG}> APPEND)
        set_property(TARGET Eigen3::Eigen PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Debug>:
                     ${eigen_Eigen3_Eigen_COMPILE_OPTIONS_C_DEBUG}
                     ${eigen_Eigen3_Eigen_COMPILE_OPTIONS_CXX_DEBUG}> APPEND)
        set(eigen_Eigen3_Eigen_TARGET_PROPERTIES TRUE)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET Eigen3::Eigen PROPERTY INTERFACE_LINK_LIBRARIES Eigen3::Eigen APPEND)

########## For the modules (FindXXX)
set(eigen_LIBRARIES_DEBUG Eigen3::Eigen)
