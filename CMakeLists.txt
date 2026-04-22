cmake_minimum_required(VERSION 3.16)
project(endoscope)

find_package(Qt6 REQUIRED)

add_executable(endoscope src/main.cpp)

target_link_libraries(endoscope qt::qt)