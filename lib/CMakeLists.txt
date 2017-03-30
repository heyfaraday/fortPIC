cmake_minimum_required(VERSION 3.6)

project(lib)

set(LIB_FILES print_hello.f90 print_hi.f90)

add_library(lib STATIC ${LIB_FILES})