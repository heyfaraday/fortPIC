cmake_minimum_required(VERSION 3.6)

project(bin)

set(BIN_FILES field_test.f90)
add_executable(main.a ${BIN_FILES})

target_link_libraries(main.a lib)