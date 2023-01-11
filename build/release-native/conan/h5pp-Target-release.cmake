# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################

set(h5pp_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${h5pp_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${h5pp_COMPILE_OPTIONS_C_RELEASE}>")

set(h5pp_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${h5pp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${h5pp_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${h5pp_EXE_LINK_FLAGS_RELEASE}>")

set(h5pp_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(h5pp_FRAMEWORKS_FOUND_RELEASE "${h5pp_FRAMEWORKS_RELEASE}" "${h5pp_FRAMEWORK_DIRS_RELEASE}")

set(h5pp_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET h5pp_DEPS_TARGET)
    add_library(h5pp_DEPS_TARGET INTERFACE)
endif()

set_property(TARGET h5pp_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${h5pp_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${h5pp_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:HDF5::HDF5;Eigen3::Eigen;spdlog::spdlog>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### h5pp_DEPS_TARGET to all of them
conan_package_library_targets("${h5pp_LIBS_RELEASE}"    # libraries
                              "${h5pp_LIB_DIRS_RELEASE}" # package_libdir
                              h5pp_DEPS_TARGET
                              h5pp_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "h5pp")    # package_name

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${h5pp_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH ${h5pp_BUILD_DIRS_RELEASE} ${CMAKE_PREFIX_PATH})


########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT h5pp::flags #############

        set(h5pp_h5pp_flags_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(h5pp_h5pp_flags_FRAMEWORKS_FOUND_RELEASE "${h5pp_h5pp_flags_FRAMEWORKS_RELEASE}" "${h5pp_h5pp_flags_FRAMEWORK_DIRS_RELEASE}")

        set(h5pp_h5pp_flags_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET h5pp_h5pp_flags_DEPS_TARGET)
            add_library(h5pp_h5pp_flags_DEPS_TARGET INTERFACE)
        endif()

        set_property(TARGET h5pp_h5pp_flags_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'h5pp_h5pp_flags_DEPS_TARGET' to all of them
        conan_package_library_targets("${h5pp_h5pp_flags_LIBS_RELEASE}"
                                      "${h5pp_h5pp_flags_LIB_DIRS_RELEASE}"
                                      h5pp_h5pp_flags_DEPS_TARGET
                                      h5pp_h5pp_flags_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "h5pp_h5pp_flags")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET h5pp::flags
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_LIBRARIES_TARGETS}>
                     APPEND)

        if("${h5pp_h5pp_flags_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET h5pp::flags
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         h5pp_h5pp_flags_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET h5pp::flags PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET h5pp::flags PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET h5pp::flags PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${h5pp_h5pp_flags_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET h5pp::flags PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:
                     ${h5pp_h5pp_flags_COMPILE_OPTIONS_C_RELEASE}
                     ${h5pp_h5pp_flags_COMPILE_OPTIONS_CXX_RELEASE}> APPEND)
        set(h5pp_h5pp_flags_TARGET_PROPERTIES TRUE)

    ########## COMPONENT h5pp::deps #############

        set(h5pp_h5pp_deps_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(h5pp_h5pp_deps_FRAMEWORKS_FOUND_RELEASE "${h5pp_h5pp_deps_FRAMEWORKS_RELEASE}" "${h5pp_h5pp_deps_FRAMEWORK_DIRS_RELEASE}")

        set(h5pp_h5pp_deps_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET h5pp_h5pp_deps_DEPS_TARGET)
            add_library(h5pp_h5pp_deps_DEPS_TARGET INTERFACE)
        endif()

        set_property(TARGET h5pp_h5pp_deps_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'h5pp_h5pp_deps_DEPS_TARGET' to all of them
        conan_package_library_targets("${h5pp_h5pp_deps_LIBS_RELEASE}"
                                      "${h5pp_h5pp_deps_LIB_DIRS_RELEASE}"
                                      h5pp_h5pp_deps_DEPS_TARGET
                                      h5pp_h5pp_deps_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "h5pp_h5pp_deps")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET h5pp::deps
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_LIBRARIES_TARGETS}>
                     APPEND)

        if("${h5pp_h5pp_deps_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET h5pp::deps
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         h5pp_h5pp_deps_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET h5pp::deps PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET h5pp::deps PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET h5pp::deps PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${h5pp_h5pp_deps_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET h5pp::deps PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:
                     ${h5pp_h5pp_deps_COMPILE_OPTIONS_C_RELEASE}
                     ${h5pp_h5pp_deps_COMPILE_OPTIONS_CXX_RELEASE}> APPEND)
        set(h5pp_h5pp_deps_TARGET_PROPERTIES TRUE)

    ########## COMPONENT h5pp::headers #############

        set(h5pp_h5pp_headers_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(h5pp_h5pp_headers_FRAMEWORKS_FOUND_RELEASE "${h5pp_h5pp_headers_FRAMEWORKS_RELEASE}" "${h5pp_h5pp_headers_FRAMEWORK_DIRS_RELEASE}")

        set(h5pp_h5pp_headers_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET h5pp_h5pp_headers_DEPS_TARGET)
            add_library(h5pp_h5pp_headers_DEPS_TARGET INTERFACE)
        endif()

        set_property(TARGET h5pp_h5pp_headers_DEPS_TARGET
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_DEPENDENCIES_RELEASE}>
                     APPEND)

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'h5pp_h5pp_headers_DEPS_TARGET' to all of them
        conan_package_library_targets("${h5pp_h5pp_headers_LIBS_RELEASE}"
                                      "${h5pp_h5pp_headers_LIB_DIRS_RELEASE}"
                                      h5pp_h5pp_headers_DEPS_TARGET
                                      h5pp_h5pp_headers_LIBRARIES_TARGETS
                                      "_RELEASE"
                                      "h5pp_h5pp_headers")

        ########## TARGET PROPERTIES #####################################
        set_property(TARGET h5pp::headers
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_LIBRARIES_TARGETS}>
                     APPEND)

        if("${h5pp_h5pp_headers_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET h5pp::headers
                         PROPERTY INTERFACE_LINK_LIBRARIES
                         h5pp_h5pp_headers_DEPS_TARGET
                         APPEND)
        endif()

        set_property(TARGET h5pp::headers PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_LINKER_FLAGS_RELEASE}> APPEND)
        set_property(TARGET h5pp::headers PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_INCLUDE_DIRS_RELEASE}> APPEND)
        set_property(TARGET h5pp::headers PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${h5pp_h5pp_headers_COMPILE_DEFINITIONS_RELEASE}> APPEND)
        set_property(TARGET h5pp::headers PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:
                     ${h5pp_h5pp_headers_COMPILE_OPTIONS_C_RELEASE}
                     ${h5pp_h5pp_headers_COMPILE_OPTIONS_CXX_RELEASE}> APPEND)
        set(h5pp_h5pp_headers_TARGET_PROPERTIES TRUE)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET h5pp::h5pp PROPERTY INTERFACE_LINK_LIBRARIES h5pp::flags APPEND)
    set_property(TARGET h5pp::h5pp PROPERTY INTERFACE_LINK_LIBRARIES h5pp::deps APPEND)
    set_property(TARGET h5pp::h5pp PROPERTY INTERFACE_LINK_LIBRARIES h5pp::headers APPEND)

########## For the modules (FindXXX)
set(h5pp_LIBRARIES_RELEASE h5pp::h5pp)
