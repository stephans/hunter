# Copyright (c) 2019 Kyle Ambroff-Kao <kyle@ambroffkao.com>

function(hunter_configure_macos_sdk)
  # Apple moved the system headers in Mojave. The SDK is no longer installed
  # globally, since they support targetting multiple SDK versions at once.
  #
  # We can detect the path of the default SDK and add that to the default
  # search path.
  find_program(XCRUN_EXE
    NAMES xcrun
    DOC "Path to xcrun executable, a tool that ships with Xcode.")
  if (NOT XCRUN_EXE)
    message(FATAL
      "You need to install the Xcode SDK. Run `xcode-select --install' please."
      )
  endif()

  # CMAKE_OSX_SYSROOT should be set to the path of the SDK, which is derived
  # from SDKROOT. Conveniently, this path is the output of the following
  # command.
  #
  # See https://cmake.org/cmake/help/v3.13/variable/CMAKE_OSX_SYSROOT.html
  execute_process(COMMAND ${XCRUN_EXE} --show-sdk-path
    OUTPUT_VARIABLE SDKROOT
    RESULT_VARIABLE DETECT_MACOS_SDK_PATH_RESULT
    )

  if (NOT DETECT_MACOS_SDK_PATH_RESULT STREQUAL "0")
    message(FATAL
      "Unable to detect macOS SDK location: ${DETECT_MACOS_SDK_PATH_RESULT}"
      )
  endif()

  # We also need to set the development target. We'll just make this the
  # default since we don't intend to distribute binaries on macOS from this
  # repo.
  execute_process(COMMAND ${XCRUN_EXE} --show-sdk-version
    OUTPUT_VARIABLE CMAKE_OSX_DEPLOYMENT_TARGET
    )

  # Need to strip the output since it might have leading or trailing whitespace.
  string(STRIP ${SDKROOT} SDKROOT)
  string(STRIP ${CMAKE_OSX_DEPLOYMENT_TARGET} CMAKE_OSX_DEPLOYMENT_TARGET)

  # Setting these environment variables so that the build will choose the
  # right SDK.
  set(ENV{SDKROOT} "${SDKROOT}")
  set(ENV{MACOSX_DEPLOYMENT_TARGET} "${CMAKE_OSX_DEPLOYMENT_TARGET}")
endfunction()
