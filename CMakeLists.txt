cmake_minimum_required(VERSION 3.5.2)
project("fmemopen")

set(VERSION_MAJOR "0")
set(VERSION_MINOR "1")
set(VERSION_PATCH "0")
set(VERSION ${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH})

set(CMAKE_CC_STANDARD 99)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

include_directories(
    ${PROJECT_SOURCE_DIR}/include)

set(CMAKE_MACOX_RPATH ON)

add_subdirectory(include)
add_subdirectory(src)
