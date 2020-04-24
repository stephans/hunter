# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
  PACKAGE_NAME
  fu2
  VERSION
  "4.1.0"
  URL
  "https://github.com/Naios/function2/archive/4.1.0.tar.gz"
  SHA1
  e9d871aaebf96ec63eb7d2a5299cfc44f13d76fc
  )

# List of versions here...
hunter_add_version(
  PACKAGE_NAME
  fu2
  VERSION
  "4.1.0.1"
  URL
  "https://github.com/ambroff/function2/archive/4.1.0_hunter.tar.gz"
  SHA1
  e9d871aaebf96ec63eb7d2a5299cfc44f13d76fc
  )


hunter_cmake_args(fu2 CMAKE_ARGS FU2_WITH_CPP_LATEST=ON FU2_ENABLE_TESTS=OFF)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects

hunter_cacheable(fu2)
# Download package.
hunter_download(PACKAGE_NAME fu2)
