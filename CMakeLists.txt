cmake_minimum_required(VERSION 3.0)
project(5G_PCSE_Technical_Task)

set(CMAKE_CXX_STANDARD 11)

include_directories(src)

add_subdirectory(src)
add_subdirectory(tst)
add_subdirectory(lib/googletest)