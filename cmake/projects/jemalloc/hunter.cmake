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

hunter_configuration_types(jemalloc CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_download(PACKAGE_NAME jemalloc)
