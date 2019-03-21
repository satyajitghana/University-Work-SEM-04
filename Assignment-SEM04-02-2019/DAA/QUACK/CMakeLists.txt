cmake_minimum_required(VERSION 3.12)
project(QUACK C)

set(CMAKE_C_STANDARD 99)

add_executable(QUACK main.c stack.c stack.h input_helper.c input_helper.h debug_helper.h quack.c quack.h vector.h vector.c)