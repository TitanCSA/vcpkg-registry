vcpkg_download_distfile(ARCHIVE
    URLS "https://github.com/StrikeFound/Windows-Virtual-USB/releases/download/sdk-v0.1.0/windows-virtual-usb-sdk-0.1.0.tar.gz"
    FILENAME "windows-virtual-usb-sdk-0.1.0.tar.gz"
    SHA512 f8429291d1495bebfb151905af035d184920a3bd97b44a0ca41979b06f3146b7bf8d08f1ab240ee325e22ac460927ac5d3e786e755791901c1d47ecafb825e72
)
vcpkg_extract_source_archive(SOURCE_PATH ARCHIVE "${ARCHIVE}" NO_REMOVE_ONE_LEVEL)
vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME WindowsVirtualUSBSDK CONFIG_PATH lib/cmake/WindowsVirtualUSBSDK)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include" "${CURRENT_PACKAGES_DIR}/debug/share")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
