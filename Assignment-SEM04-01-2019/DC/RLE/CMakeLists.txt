# cmake_minimum_required(VERSION <specify CMake version here>)
project(RLE C)

set(CMAKE_C_STANDARD 99)

add_executable(RLE main.c input_helper.c input_helper.h debug_helper.h vector.c vector.h data_compression.c data_compression.h)