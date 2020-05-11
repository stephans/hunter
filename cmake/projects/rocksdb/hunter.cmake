# Copyright (c) 2017, Pawel Bylica
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    rocksdb
    VERSION
    5.7.2
    URL
    "https://github.com/facebook/rocksdb/archive/v5.7.2.tar.gz"
    SHA1
    f14feee1348bc62b733c6db620a02979477e234f
)

hunter_add_version(
    PACKAGE_NAME
    rocksdb
    VERSION
    5.8.6
    URL
    "https://github.com/facebook/rocksdb/archive/v5.8.6.tar.gz"
    SHA1
    0610c260676e78b03ba48b2d671ba92bdcff2641
)

hunter_add_version(
    PACKAGE_NAME
    rocksdb
    VERSION
    5.14.2
    URL
    "https://github.com/facebook/rocksdb/archive/v5.14.2.tar.gz"
    SHA1
    376bc537e8c716111214274755f5fe4026e5a354
)

hunter_add_version(
    PACKAGE_NAME
    rocksdb
    VERSION
    6.15.2
    URL
    "https://github.com/facebook/rocksdb/archive/v6.15.2.tar.gz"
    SHA1
    daf7ef3946fd39c910acaaa57789af8515b39251
)

hunter_add_version(
    PACKAGE_NAME
    rocksdb
    VERSION
    7.5.3
    URL
    "https://github.com/facebook/rocksdb/archive/refs/tags/v7.5.3.tar.gz"
    SHA1
    c8e57ffa58995d6a545daabe137882353939295a
)

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 5.14.3
    URL "https://github.com/facebook/rocksdb/archive/v5.14.3.tar.gz"
    SHA1 "42654903ecce9e159a62b848ca518472a880fe82"
    )

hunter_add_version(
    PACKAGE_NAME rocksdb
    VERSION 6.8.1
    URL "https://github.com/facebook/rocksdb/archive/v6.8.1.tar.gz"
    SHA1 "6407b34f69d5f41799086438aa76a710e42cd2c9"
    )

if(MSVC)
    hunter_cmake_args(rocksdb CMAKE_ARGS
        WITH_TESTS=OFF
        WITH_GFLAGS=OFF
        WITH_BENCHMARK_TOOLS=OFF
        WITH_CORE_TOOLS=OFF
        WITH_TOOLS=OFF
        PORTABLE=ON
        ROCKSDB_INSTALL_ON_WINDOWS=ON
        FAIL_ON_WARNINGS=OFF)
else()
    hunter_cmake_args(rocksdb CMAKE_ARGS
        WITH_TESTS=OFF
        WITH_GFLAGS=OFF
        WITH_BENCHMARK_TOOLS=OFF
        WITH_CORE_TOOLS=OFF
        WITH_TOOLS=OFF
        PORTABLE=ON
        FAIL_ON_WARNINGS=OFF)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(rocksdb)
hunter_download(PACKAGE_NAME rocksdb)
