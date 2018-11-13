include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)
include(hunter_cmake_args)

hunter_add_version(
  PACKAGE_NAME folly
  VERSION "2018.04.09.00"
  URL "https://github.com/ambroff/folly/archive/4d00384173da50fcc56603be107c76566ba42069.zip"
  SHA1 7f4eb81bb284788a861b0f834a022b74a25f42f1
)

hunter_add_version(
  PACKAGE_NAME folly
  VERSION "2018.04.18.00"
  URL "https://github.com/ambroff/folly/archive/f4da1bb692c562ebb3aa60c358400136c0922838.zip"
  SHA1 a5fd37fc1f4bf0e6b0ac1b83d73ae48333693132
)

hunter_add_version(
  PACKAGE_NAME folly
  VERSION "2018.04.20.00"
  URL "https://github.com/ambroff/folly/archive/v2018.04.20.00-hunter.zip"
  SHA1 e16dc7c5f62762cc7b88b7c9cf8bce3ee963fc18
)

hunter_add_version(
  PACKAGE_NAME folly
  VERSION "2018.04.20.01"
  URL "https://github.com/ambroff/folly/archive/9543e7d77b11af662c792be9390e2ad0b621040a.zip"
  SHA1 1f524b68eb6edc158830ce6cbda7d07f16a8fcfa
)

hunter_add_version(
  PACKAGE_NAME folly
  VERSION "2018.04.20.02"
  URL "https://github.com/ambroff/folly/archive/748b0c4ecf0af5b03a575373b6cc7c2ab25e8794.zip"
  SHA1 7e852c190c627691de3ba76b90fb6ac9f5343fbc
)

if (APPLE)
  hunter_cmake_args(folly CMAKE_ARGS FOLLY_USE_LIBCPP=TRUE)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME folly)

