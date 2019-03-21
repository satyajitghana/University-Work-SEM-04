cmake_minimum_required(VERSION 3.12)
project(Hamming C)

set(CMAKE_C_STANDARD 99)

add_executable(Hamming main.c hamming.c hamming.h debug_helper.h input_helper.h input_helper.c)

target_link_libraries(Hamming m)