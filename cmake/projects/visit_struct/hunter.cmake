include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME visit_struct
  VERSION "1.0"
  URL "https://github.com/cbeck88/visit_struct/archive/v1.0.zip"
  SHA1 ec24d3b91861065e6586b9cf8b240b9c36db511b
  )

hunter_pick_scheme(DEFAULT header_only_lib)
hunter_download(PACKAGE_NAME visit_struct)
