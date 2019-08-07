# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME cpptoml
  VERSION "0.4.0"
  URL "https://github.com/skystrife/cpptoml/archive/2051836a96a25e5a2d5283be7f633a157848f15e.zip"
  SHA1 174fd40b5fa53f33b41a9ac392e05bd81dc75f2c
  )

hunter_cmake_args(
  cpptoml
  CMAKE_ARGS
  ENABLE_LIBCXX=OFF
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cpptoml)
hunter_download(PACKAGE_NAME cpptoml)
