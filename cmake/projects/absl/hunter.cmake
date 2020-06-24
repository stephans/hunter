# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME absl
    VERSION "20200923.2"
    URL "https://github.com/abseil/abseil-cpp/archive/20200923.2.tar.gz"
    SHA1 "1dd3f0a937c3678437646d26ca6784bd6a9b2b26"
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(absl)
hunter_download(PACKAGE_NAME absl)
