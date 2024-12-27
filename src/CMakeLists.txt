cmake_minimum_required(VERSION 3.10)

project(hello VERSION 1.0)

message("CMAKE_HOST_SYSTEM_NAME: ${CMAKE_HOST_SYSTEM_NAME}")

# -std=c++17 -Wshadow -Wall
if (MSVC)
    set(CMAKE_CXX_STANDARD 20)
else()
    set(CMAKE_CXX_STANDARD 17)
endif()
set(CMAKE_CXX_STANDARD_REQUIRED True)

# set compile option
if (NOT MSVC)
    add_compile_options(-fPIC)
endif()
add_compile_options(-I ${CMAKE_SOURCE_DIR})
if (APPLE)
    add_compile_options(-mmacosx-version-min=10.15)
endif()

# build
add_executable(hello ${CMAKE_SOURCE_DIR}/main.cpp)
