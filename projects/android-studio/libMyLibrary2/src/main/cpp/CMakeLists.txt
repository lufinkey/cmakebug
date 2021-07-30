
cmake_minimum_required(VERSION 3.18.1)
project("MyLibrary2")

set( MYLIB2_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../.." )
set( MYLIB1_ROOT "${MYLIB2_ROOT}/external/MyLibrary1")

file(GLOB_RECURSE MYLIB2_SOURCES "${MYLIB2_ROOT}/src/*.cpp")

add_library(
        MyLibrary2
        SHARED
        ${MYLIB2_SOURCES})

target_include_directories(
        MyLibrary2
        PUBLIC
        "${MYLIB2_ROOT}/src")

target_include_directories(
        MyLibrary2
        PRIVATE
        "${MYLIB1_ROOT}/src")

find_library(
        log-lib
        log)

target_link_libraries(
        MyLibrary2
        MyLibrary1
        ${log-lib})
