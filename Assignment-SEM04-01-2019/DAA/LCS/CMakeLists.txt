cmake_minimum_required(VERSION 3.12)
project(LCS C)

set(CMAKE_C_STANDARD 99)

add_executable(LCS main.c input_helper.c input_helper.h debug_helper.h lcs.c lcs.h vector.c vector.h)