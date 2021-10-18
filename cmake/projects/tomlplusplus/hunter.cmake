# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME tomlplusplus
  VERSION "2.5.0"
  URL "https://github.com/marzer/tomlplusplus/archive/refs/tags/v2.5.0.tar.gz"
  SHA1 486fbd418b3fc7338f68cd6546462af9fdbd6a5c
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(tomlplusplus)
hunter_download(PACKAGE_NAME tomlplusplus)
