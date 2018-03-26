include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME zstd
  VERSION "1.3.4"
  URL "https://github.com/facebook/zstd/archive/v1.3.4.tar.gz"
  SHA1 f000e185e02b8ccccd0992e5cb7e88175318d83b
  )

hunter_pick_scheme(DEFAULT zstd_makefile)
hunter_download(PACKAGE_NAME zstd)
