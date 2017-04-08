cmake_minimum_required(VERSION 3.6)

project(bin)

set(BIN_FILES vay_pusher.f90)
add_executable(vay_pusher.a ${BIN_FILES})

target_link_libraries(vay_pusher.a lib)
