# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-flatbuffers)

# DOCUMENTATION_START {
hunter_add_package(brpc)
find_package(brpc REQUIRED)

add_executable(brpc-example brpc-example.cpp)
target_link_libraries(brpc-example PRIVATE brpc::brpc)
# DOCUMENTATION_END }
