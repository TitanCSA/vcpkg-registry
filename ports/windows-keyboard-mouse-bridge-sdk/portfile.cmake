vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/StrikeFound/Windows-Keyboard-Mouse-Bridge/releases/download/sdk-v0.1.0/windows-keyboard-mouse-bridge-sdk-0.1.0.tar.gz"
    FILENAME "windows-keyboard-mouse-bridge-sdk-0.1.0.tar.gz"
    SHA512 1f2df3124e50468c4e0ce56105b8c742ef1a8f8a54f18c115e3d8a05da431385fdbafbde18566f5d83b048595ae97d0e31803ad3aad7da8ee5fc139924cf0839
)
vcpkg_extract_source_archive(SOURCE_PATH ARCHIVE "${ARCHIVE}" NO_REMOVE_ONE_LEVEL)
vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME WindowsKeyboardMouseBridgeSDK CONFIG_PATH lib/cmake/WindowsKeyboardMouseBridgeSDK)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include" "${CURRENT_PACKAGES_DIR}/debug/share")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
