include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_version(
  PACKAGE_NAME jemalloc
  VERSION "5.0.1"
  URL "https://github.com/jemalloc/jemalloc/releases/download/5.0.1/jemalloc-5.0.1.tar.bz2"
  SHA1 5c2c74b8bf773df6e813f0709f55d40a8256104d
)

hunter_configuration_types(jemalloc CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_download(PACKAGE_NAME jemalloc)
