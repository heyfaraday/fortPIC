cmake_minimum_required(VERSION 3.6)

project(bin)

set(BIN_FILES update_and_cross_tests.f90)
add_executable(hello_world.a ${BIN_FILES})

target_link_libraries(hello_world.a lib)