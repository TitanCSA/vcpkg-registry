vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/StrikeFound/Windows-Input-Bridge/releases/download/sdk-v0.1.0/windows-input-bridge-sdk-0.1.0.tar.gz"
    FILENAME "windows-input-bridge-sdk-0.1.0.tar.gz"
    SHA512 3748e85c5a56e5eb4eab36c9d0d1857ecd133acbc54334cd7736c8f59c4437d4c51bae6b80dd4d2a7aa231de4e51723895f3d321e60bee2b7723fad3e8b80d3b
)
vcpkg_extract_source_archive(SOURCE_PATH ARCHIVE "${ARCHIVE}" NO_REMOVE_ONE_LEVEL)
vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME WindowsInputBridgeSDK CONFIG_PATH lib/cmake/WindowsInputBridgeSDK)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include" "${CURRENT_PACKAGES_DIR}/debug/share")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
