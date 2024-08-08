cmake_minimum_required(VERSION 3.28)
project(delete)
set(CMAKE_CXX_STANDARD 17)
add_executable(delete main.cpp)

set(SFML_STATIC_LIBRARIES TRUE)


set(SFML_DIR C:/SFML/lib/cmake/SFML)
find_package(SFML COMPONENTS system window graphics audio network REQUIRED)

include_directories(C://SFML/include/SFML)
target_link_libraries(delete sfml-system sfml-window sfml-graphics sfml-audio)
