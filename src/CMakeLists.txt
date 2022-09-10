cmake_minimum_required(VERSION 3.0)

set(BINARY ${CMAKE_PROJECT_NAME})

include(CTest)
enable_testing()

file(GLOB_RECURSE SOURCES LIST_DIRECTORIES true *.cpp)

set(SOURCES ${SOURCES})

add_executable(server server.cpp)
add_executable(client client.cpp)

add_library(${BINARY}_lib STATIC ${SOURCES})

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)