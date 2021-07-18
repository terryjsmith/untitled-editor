cmake_minimum_required(VERSION 2.8)

project(untitled-editor)
set (CMAKE_CXX_STANDARD 11)

# set the output directory without the /Debug/ and /Release/ equivalents
foreach( OUTPUTCONFIG ${CMAKE_CONFIGURATION_TYPES} )
    string( TOUPPER ${OUTPUTCONFIG} OUTPUTCONFIG )
    set( CMAKE_RUNTIME_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${CMAKE_BINARY_DIR} )
    set( CMAKE_LIBRARY_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${CMAKE_BINARY_DIR} )
    set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${CMAKE_BINARY_DIR} )
endforeach( OUTPUTCONFIG CMAKE_CONFIGURATION_TYPES )

# dependencies
add_subdirectory("ThirdParty/glfw-3.3.4")
add_subdirectory("ThirdParty/gl3w-master")
add_subdirectory("ThirdParty/freetype-2.10.4")

# main library
set (SOURCE_FILES "")

# helper macros to add directories of files and clear list
macro (list_source_files dir)
        file (GLOB CPP_FILES "${dir}/*.cpp")
        file (GLOB H_FILES "${dir}/*.h")

        list (APPEND SOURCE_FILES ${CPP_FILES})
        list (APPEND SOURCE_FILES ${H_FILES})
endmacro()

macro (clear_source_files)
        set (SOURCE_FILES "")
endmacro()

# add include directories
set (INCLUDE_DIRS "")
list (APPEND INCLUDE_DIRS "Source")
list (APPEND INCLUDE_DIRS "ThirdParty/gl3w-master/include")
list (APPEND INCLUDE_DIRS "ThirdParty/freetype-2.10.4/include")
list (APPEND INCLUDE_DIRS "ThirdParty/glfw-3.3.4/include")
list (APPEND INCLUDE_DIRS "ThirdParty/glm/include")

# add libraries
set (ENGINE_LIBS "")

# add platform specific libraries
IF(WIN32)
        list (APPEND ENGINE_LIBS "legacy_stdio_definitions.lib")
        list (APPEND ENGINE_LIBS "OpenGL32.lib")
        list (APPEND ENGINE_LIBS "WinMM.Lib")
        list (APPEND ENGINE_LIBS "AdvAPI32.Lib")
        list (APPEND ENGINE_LIBS "Crypt32.Lib")
        list (APPEND ENGINE_LIBS "Dbghelp.lib")
        list (APPEND ENGINE_LIBS "ShLwApi.Lib")
        list (APPEND ENGINE_LIBS "Wldap32.Lib")
        list (APPEND ENGINE_LIBS "Version.lib")
        list (APPEND ENGINE_LIBS "Bcrypt.lib")
ENDIF()

IF(APPLE)
        list (APPEND ENGINE_LIBS "-framework IOKit")
        list (APPEND ENGINE_LIBS "-framework Cocoa")
        list (APPEND ENGINE_LIBS "-framework OpenGL")
ENDIF()

##
## game editor
##

list_source_files("Source")
add_executable(untitled-editor ${SOURCE_FILES} "ThirdParty/gl3w-master/src/gl3w.c")

set_property(TARGET untitled-editor APPEND PROPERTY COMPILE_DEFINITIONS)
set_property(TARGET untitled-editor APPEND PROPERTY COMPILE_DEFINITIONS "_CRT_SECURE_NO_WARNINGS")

target_link_libraries(untitled-editor ${ENGINE_LIBS} "glfw3" "freetype")
target_include_directories(untitled-editor PRIVATE ${INCLUDE_DIRS})

clear_source_files()
