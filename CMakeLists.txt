cmake_minimum_required(VERSION 3.28)
project(SFML)

set(SFML_STATIC_LIBRARIES TRUE)
set(CMAKE_CXX_STANDARD 20)
find_package(SFML 2.6.1 COMPONENTS system window graphics)

add_executable(SFML main.cpp)
target_link_libraries(SFML sfml-system sfml-window sfml-graphics -static)
