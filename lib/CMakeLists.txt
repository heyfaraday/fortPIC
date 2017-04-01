cmake_minimum_required(VERSION 3.6)

project(lib)

set(LIB_FILES cross.f90 field.f90 update.f90)

add_library(lib STATIC ${LIB_FILES})