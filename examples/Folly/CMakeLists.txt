cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

set(CMAKE_CXX_STANDARD 17)

project(folly-test)

if (APPLE)
  # Clang 6 mistakenly doesn't signal that it supports C++17 std::launder, which leads to a compile error in
  # folly/Launder.h since that has a fallback implementation.
  # See http://en.cppreference.com/w/User:D41D8CD98F/feature_testing_macros
  add_definitions(
    -D__cpp_lib_launder=201606
    )
endif(APPLE)

# DOCUMENTATION_START {
hunter_add_package(ZLIB)
find_package(ZLIB CONFIG REQUIRED)

hunter_add_package(gflags)
find_package(gflags CONFIG REQUIRED)

hunter_add_package(glog)
find_package(glog CONFIG REQUIRED)

hunter_add_package(Folly)
find_package(Folly CONFIG REQUIRED)

hunter_add_package(double-conversion)
find_package(double-conversion CONFIG REQUIRED)

add_executable(folly-test test.cpp)
target_link_libraries(folly-test PUBLIC
  ZLIB::zlib
  glog::glog
  gflags
  Folly::folly
  double-conversion::double-conversion
  )
# DOCUMENTATION_END }
