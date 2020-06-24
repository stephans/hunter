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
    PACKAGE_NAME flatbuffers
    VERSION 1.9.0
    URL "https://github.com/google/flatbuffers/archive/v1.9.0.zip"
    SHA1 1fbf88b7aa5e3a4502571f842ffc0cb4e8c04897
    )

hunter_add_version(
    PACKAGE_NAME flatbuffers
    VERSION 1.10.0.li0
    URL "https://github.com/ambroff/flatbuffers/archive/72832bfb36b8f8b2268448da90e6134f69fba123.zip"
    SHA1 36a1aad44e8102fda8a4fbc56283912191cd3d45
    )

hunter_add_version(
    PACKAGE_NAME flatbuffers
    VERSION 1.10.0.li1
    URL "https://github.com/ambroff/flatbuffers/archive/ecc2e051338442767bc92e6a969a5ee87e73e1ce.zip"
    SHA1 bfe3b82396f54791101af86e0a0860c0206cdf65
    )

hunter_add_version(
    PACKAGE_NAME flatbuffers
    VERSION 1.12.0
    URL https://github.com/google/flatbuffers/archive/v1.12.0.tar.gz
    SHA1 8c047d1d843a29072702ee09ec7ecbce00636433
    )

hunter_cmake_args(
    flatbuffers
    CMAKE_ARGS
        FLATBUFFERS_BUILD_FLATC=ON
        FLATBUFFERS_BUILD_FLATHASH=OFF
        FLATBUFFERS_BUILD_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(flatbuffers)
hunter_download(PACKAGE_NAME flatbuffers)
