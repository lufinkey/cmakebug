
cmake_minimum_required(VERSION 3.18.1)
project(MyLibrary1)

set( MYLIB1_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../../../../.." )

file(GLOB_RECURSE MYLIB1_SOURCES "${MYLIB1_ROOT}/src/*.cpp")

add_library(MyLibrary1 SHARED ${MYLIB1_SOURCES})

target_include_directories(
		MyLibrary1
		PUBLIC
		"${MYLIB1_ROOT}/src")

find_library(log-lib log)

target_link_libraries(
		MyLibrary1
		${log-lib})
