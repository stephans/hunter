include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_version(
  PACKAGE_NAME jemalloc
  VERSION "5.2.1"
  URL "https://github.com/jemalloc/jemalloc/releases/download/5.2.1/jemalloc-5.2.1.tar.bz2"
  SHA1 9e06b5cc57fd185379d007696da153893cf73e30
)

hunter_add_version(
  PACKAGE_NAME jemalloc
  VERSION "5.3.0"
  URL "https://github.com/jemalloc/jemalloc/archive/refs/tags/5.3.0.tar.gz"
  SHA1 3e4781e0c8c0033a0da5f93a204c172337c3353b
)

hunter_configuration_types(jemalloc CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autogen_autotools)
hunter_download(PACKAGE_NAME jemalloc)
