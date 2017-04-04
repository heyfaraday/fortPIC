cmake_minimum_required(VERSION 3.6)

project(bin)

set(BIN_FILES boris_pusher.f90)
add_executable(boris_pusher.a ${BIN_FILES})

target_link_libraries(boris_pusher.a lib)
