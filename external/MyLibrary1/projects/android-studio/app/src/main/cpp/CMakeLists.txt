
cmake_minimum_required(VERSION 3.18.1)
project(TestApp)

set( MYLIB1_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../.." )

add_subdirectory( "${MYLIB1_ROOT}/projects/android-studio/libMyLibrary1/src/main/cpp" MyLibrary1_build )

add_library( TestApp SHARED native-lib.cpp )

find_library( log-lib log )

target_link_libraries(
        TestApp

        MyLibrary1
        ${log-lib} )
