vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/StrikeFound/Windows-Gamepad-Bridge/releases/download/sdk-v0.1.0/windows-gamepad-bridge-sdk-0.1.0.tar.gz"
    FILENAME "windows-gamepad-bridge-sdk-0.1.0.tar.gz"
    SHA512 ae0ab3b2386529222a36744e426820404dce6186024daee3ed5a37c1bdcae21e7099a435137a1d9d10942186e48968be2383877dfe35a31f086cc0ba6abf2c1c
)
vcpkg_extract_source_archive(SOURCE_PATH ARCHIVE "${ARCHIVE}" NO_REMOVE_ONE_LEVEL)
vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME WindowsGamepadBridgeSDK CONFIG_PATH lib/cmake/WindowsGamepadBridgeSDK)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include" "${CURRENT_PACKAGES_DIR}/debug/share")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
