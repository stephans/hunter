# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME async_grpc
  VERSION "2018.4.17.3"
  URL "https://github.com/ambroff/async_grpc/archive/a88f9c0954ab82e8041c90bbbdcf1c08eb3fbf65.zip"
  SHA1 8fd1bc8a3c8117dca3124d7db39644cd7df37b49
  )

hunter_add_version(
  PACKAGE_NAME async_grpc
  VERSION "2018.5.2.4"
  URL "https://github.com/ambroff/async_grpc/archive/96ad6ca6778a1f7abf164cfa964edf5663d91375.zip"
  SHA1 a276c320a30468a0e0b7f9f94f7a92c79fb98809
)

hunter_add_version(
  PACKAGE_NAME async_grpc
  VERSION "2018.5.2.5"
  URL "https://github.com/ambroff/async_grpc/archive/51c496e106a9e2bcb774604285ca2ae46fd82295.zip"
  SHA1 5df0fe96eb25425b46b7545aba3964e6577b2613
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(async_grpc)
hunter_download(PACKAGE_NAME async_grpc)
