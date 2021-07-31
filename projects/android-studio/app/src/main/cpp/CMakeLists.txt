
cmake_minimum_required(VERSION 3.18.1)
project(TestApp)

set( MYLIB2_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../.." )
set( MYLIB1_ROOT "${MYLIB2_ROOT}/external/MyLibrary1")

add_subdirectory("${MYLIB1_ROOT}/projects/android-studio/libMyLibrary1/src/main/cpp" MyLibrary1_build)
add_subdirectory("${MYLIB2_ROOT}/projects/android-studio/libMyLibrary2/src/main/cpp" MyLibrary2_build)

add_library(
        TestApp
        SHARED
        native-lib.cpp)

target_link_libraries(
        TestApp
        MyLibrary1
        MyLibrary2)
