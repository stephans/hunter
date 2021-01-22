# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME async_flatbuffer_grpc
  VERSION "0.1.0"
  URL "https://github.com/ambroff/async_flatbuffer_grpc/archive/v0.1.0.zip"
  SHA1 594793f916a9634e72a27a2f18a39a710d77e4bc
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(async_flatbuffer_grpc)
hunter_download(PACKAGE_NAME async_flatbuffer_grpc)
