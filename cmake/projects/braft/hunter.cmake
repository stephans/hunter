# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2018.5.11.0
  URL "https://github.com/ambroff/braft/archive/c113884f0a05d819494753377cd0c07d1a14447f.zip"
  SHA1 7b290fcb4491e04f52565ac321d0b2d6b405088a
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2018.5.11.1
  URL "https://github.com/lindong28/braft/archive/8c4ad8437d709dda70ad4edcc0f10960ac72d2b8.zip"
  SHA1 40fff011e48364b94533aca9257ea8db33ef02db
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2018.5.24.1
  URL "https://github.com/ambroff/braft/archive/851d1fa05134a11696e9a590cbb8cff4cafff840.zip"
  SHA1 9d8d61d52e77e7c0fb336ab5610f2a3e12b611a6
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2018.10.23.1
  URL "https://github.com/ambroff/braft/archive/fc374499eb0171542cb6b313e53d5dca6c036831.zip"
  SHA1 19cf561a2ce4913ccf474b65bf68b34e53dbeb53
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2020.07.31.1
  URL "https://github.com/hzxa21/braft/archive/35a135daea21e7f6ddd16ac839e162a7ca8c2c58.zip"
  SHA1 f108fc14fc73ca0cba8ad93dfe544efaf539f18b
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2020.07.31.2
  URL "https://github.com/ambroff/braft/archive/hunter_2020.07.31.2.zip"
  SHA1 70c929cfa421fc1fc2738b403d0867ee210959bf
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2023.07.18.1
  URL "https://github.com/stephans/braft/archive/refs/heads/hunter_2023.07.18.1.zip"
  SHA1 561fa780586111cf424f7db038446fedc34143ec
 )
hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2023.12.12.0
  URL "https://github.com/stephans/braft/archive/refs/tags/2023.12.12.0.zip"
  SHA1 308133bf3112cc157e9c104c9ae781a44a412ac5
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2023.12.12.1
  URL "https://github.com/ambroff/braft/archive/refs/heads/2023.12.12.1.tar.gz"
  SHA1 "d164a4f738a473b01f4a6fc2968e2c41217ec40c"
  )

hunter_cmake_args(
  braft
  CMAKE_ARGS
    BRPC_WITH_GLOG=ON
    BRPC_BUILD_SHARED=OFF
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(braft)
hunter_download(PACKAGE_NAME braft)
