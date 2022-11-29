# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    1.3.0-p3
    URL
    "https://github.com/hunter-packages/flatbuffers/archive/v1.3.0-p3.tar.gz"
    SHA1
    b031689b876c2abac28c8e22fea68ca6d572d1f5
)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    1.8.0-p1
    URL
    "https://github.com/google/flatbuffers/archive/dfe68566e4b90d90635f19f466dc3f4b50a58a4f.zip"
    SHA1
    7f596e79368bc0d3080d22708bcc7625cc03a1d1
)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    1.10.0
    URL
    "https://github.com/google/flatbuffers/archive/v1.10.0.tar.gz"
    SHA1
    93b922687fe19cff6221e0d35a00879d668b45ab
)

hunter_add_version(
    PACKAGE_NAME flatbuffers
    VERSION 1.10.0.li1
    URL "https://github.com/ambroff/flatbuffers/archive/ecc2e051338442767bc92e6a969a5ee87e73e1ce.zip"
    SHA1 bfe3b82396f54791101af86e0a0860c0206cdf65
    )

hunter_add_version(
  PACKAGE_NAME flatbuffers
  VERSION 1.10.0.li2
  URL "https://github.com/ambroff/flatbuffers/archive/v1.10.0.li2.zip"
  SHA1 69defd1da792d92529c0268a18a71fab61e6d702
  )

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    1.12.0
    URL
    "https://github.com/google/flatbuffers/archive/v1.12.0.tar.gz"
    SHA1
    8c047d1d843a29072702ee09ec7ecbce00636433
)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    2.0.0
    URL
    "https://github.com/google/flatbuffers/archive/v2.0.0.tar.gz"
    SHA1
    9bdc88f875bd1923403de8956ec125328a0f0bab
)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    22.11.23
    URL
    "https://github.com/google/flatbuffers/archive/v22.11.23.tar.gz"
    SHA1
    844a8b3cd7d39472094b3ec2377aa06135735b3a
)

if(ANDROID OR IOS)
hunter_cmake_args(
    flatbuffers
    CMAKE_ARGS
        FLATBUFFERS_BUILD_FLATC=OFF
        FLATBUFFERS_STATIC_FLATC=OFF
        FLATBUFFERS_BUILD_FLATHASH=OFF
        FLATBUFFERS_BUILD_TESTS=OFF
)
else()
hunter_cmake_args(
    flatbuffers
    CMAKE_ARGS
        FLATBUFFERS_BUILD_FLATC=ON
        FLATBUFFERS_STATIC_FLATC=OFF
        FLATBUFFERS_BUILD_FLATHASH=OFF
        FLATBUFFERS_BUILD_TESTS=OFF
)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(flatbuffers)
hunter_download(PACKAGE_NAME flatbuffers)
