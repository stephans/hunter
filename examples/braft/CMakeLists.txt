# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

project(download-flatbuffers)

# DOCUMENTATION_START {
hunter_add_package(braft)
find_package(braft REQUIRED)

hunter_add_package(glog)
find_package(glog CONFIG REQUIRED)

add_executable(braft-example braft-example.cpp)
target_link_libraries(braft-example PRIVATE braft::braft glog::glog)
# DOCUMENTATION_END }
