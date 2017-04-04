cmake_minimum_required(VERSION 3.6)

project(main)

enable_language(Fortran)

set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/modules)

add_subdirectory(bin)
add_subdirectory(lib)

set(CMAKE_Fortran_COMPILER_ID Intel)

set(CMAKE_Fortran_FLAGS "-warn all -check all -O2")
