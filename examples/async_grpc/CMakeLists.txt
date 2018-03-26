cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

set(CMAKE_CXX_STANDARD 17)

project(async_grpc-test)

hunter_add_package(async_grpc)
find_package(Folly CONFIG REQUIRED)

add_executable(async_grpc-test test.cpp)

target_link_libraries(folly-test PUBLIC
  async_grpc
  )
# DOCUMENTATION_END }
