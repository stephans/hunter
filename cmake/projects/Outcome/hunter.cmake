include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)

hunter_add_version(
  PACKAGE_NAME Outcome
  VERSION "2.0"
  URL "https://github.com/ned14/outcome/releases/download/v2.0-boost-peer-review/outcome-v2.0-source-201801180951.tar.xz"
  SHA1 31d287bb406d86b6a4d02ddb94f46d430cef5168
)

hunter_pick_scheme(DEFAULT header_only_lib)
hunter_download(PACKAGE_NAME Outcome)
