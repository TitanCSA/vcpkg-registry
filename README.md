# TitanCSA Windows SDK vcpkg registry

A **custom Git registry**, separate from Microsoft's curated vcpkg registry.
Ports build the existing public user-mode Windows x64 SDK source packages.
No kernel driver, installer or activation key is installed by these ports.
SDK source licenses and driver/demo requirements remain those of each product.

Use the exact registry baseline in `publication.json` when configuring your project:

```json
{
  "registries": [{
    "kind": "git",
    "repository": "https://github.com/TitanCSA/vcpkg-registry",
    "baseline": "2a5f4f4037f5fbd911344250e43e7a1d48e04fe6",
    "packages": ["interceptor-sdk"]
  }]
}
```

Put this in `vcpkg-configuration.json`, add `interceptor-sdk` to your manifest's
dependencies, then run `vcpkg install --triplet x64-windows`. Keep the built-in
default registry configured for the vcpkg CMake helper dependencies.

## SDK ports

- `autohotinterceptor-sdk` 1.0.0 â€” [AutoHotInterceptor](https://github.com/TitanCSA/AutoHotInterceptor/releases/download/sdk-v1.0.0/autohotinterceptor-sdk-1.0.0.tar.gz)
- `browser-control-sdk-sdk` 0.2.0 â€” [Browser-Control-SDK](https://github.com/TitanCSA/Browser-Control-SDK/releases/download/sdk-v0.2.0/browser-control-sdk-sdk-0.2.0.tar.gz)
- `changed-block-tracking-sdk-sdk` 0.1.1 â€” [Changed-Block-Tracking-SDK](https://github.com/titanfyre/Changed-Block-Tracking-SDK/releases/download/sdk-v0.1.1/changed-block-tracking-sdk-sdk-0.1.1.tar.gz)
- `cloud-files-sdk-sdk` 0.1.1 â€” [Cloud-Files-SDK](https://github.com/titanfyre/Cloud-Files-SDK/releases/download/sdk-v0.1.1/cloud-files-sdk-sdk-0.1.1.tar.gz)
- `connection-trace-studio-sdk` 0.1.0 â€” [Connection-Trace-Studio](https://github.com/titanfyre/Connection-Trace-Studio/releases/download/sdk-v0.1.0/connection-trace-studio-sdk-0.1.0.tar.gz)
- `file-trace-studio-sdk` 0.1.0 â€” [File-Trace-Studio](https://github.com/titanfyre/File-Trace-Studio/releases/download/sdk-v0.1.0/file-trace-studio-sdk-0.1.0.tar.gz)
- `fyradevice-sdk` 0.1.0 â€” [FyraDevice](https://github.com/TitanCSA/FyraDevice-SDK/releases/download/sdk-v0.1.0/fyradevice-sdk-0.1.0.tar.gz)
- `fyrainput-sdk` 0.1.0 â€” [FyraInput](https://github.com/TitanCSA/FyraInput-SDK/releases/download/sdk-v0.1.0/fyrainput-sdk-0.1.0.tar.gz)
- `fyrainput-gamepad-sdk` 0.1.0 â€” [FyraInput-Gamepad](https://github.com/TitanCSA/FyraInput-Gamepad-SDK/releases/download/sdk-v0.1.0/fyrainput-gamepad-sdk-0.1.0.tar.gz)
- `fyrainput-keyboard-mouse-sdk` 0.1.0 â€” [FyraInput-Keyboard-Mouse](https://github.com/TitanCSA/FyraInput-Keyboard-Mouse-SDK/releases/download/sdk-v0.1.0/fyrainput-keyboard-mouse-sdk-0.1.0.tar.gz)
- `hid-access-control-sdk` 0.1.0 â€” [HID-Access-Control](https://github.com/titanfyre/HID-Access-Control/releases/download/sdk-v0.1.0/hid-access-control-sdk-0.1.0.tar.gz)
- `interception-v2-sdk` 2.0.0 â€” [Interception-V2](https://github.com/TitanCSA/Interception-V2/releases/download/sdk-v2.0.0/interception-v2-sdk-2.0.0.tar.gz)
- `interceptor-sdk` 1.4.22 â€” [Interceptor](https://github.com/TitanCSA/Interceptor/releases/download/sdk-v1.4.22/interceptor-sdk-1.4.22.tar.gz)
- `interceptor-gamepad-controller-sdk` 1.0.13 â€” [Interceptor-Gamepad-Controller](https://github.com/TitanCSA/Interceptor-Gamepad-Controller/releases/download/sdk-v1.0.13/interceptor-gamepad-controller-sdk-1.0.13.tar.gz)
- `interceptor-keyboard-mouse-sdk` 1.0.5 â€” [Interceptor-Keyboard-Mouse](https://github.com/TitanCSA/Interceptor-Keyboard-Mouse/releases/download/sdk-v1.0.5/interceptor-keyboard-mouse-sdk-1.0.5.tar.gz)
- `interceptor-multilang-sdk` 1.0.0 â€” [Interceptor-MultiLang](https://github.com/TitanCSA/Interceptor-MultiLang/releases/download/sdk-v1.0.0/interceptor-multilang-sdk-1.0.0.tar.gz)
- `network-emulation-sdk-sdk` 0.1.1 â€” [Network-Emulation-SDK](https://github.com/titanfyre/Network-Emulation-SDK/releases/download/sdk-v0.1.1/network-emulation-sdk-sdk-0.1.1.tar.gz)
- `packet-capture-sdk-sdk` 0.1.1 â€” [Packet-Capture-SDK](https://github.com/titanfyre/Packet-Capture-SDK/releases/download/sdk-v0.1.1/packet-capture-sdk-sdk-0.1.1.tar.gz)
- `process-trace-studio-sdk` 0.1.0 â€” [Process-Trace-Studio](https://github.com/titanfyre/Process-Trace-Studio/releases/download/sdk-v0.1.0/process-trace-studio-sdk-0.1.0.tar.gz)
- `processguard-sdk-sdk` 0.1.2 â€” [ProcessGuard-SDK](https://github.com/titanfyre/ProcessGuard-SDK/releases/download/sdk-v0.1.2/processguard-sdk-sdk-0.1.2.tar.gz)
- `registryguard-sdk` 0.1.1 â€” [RegistryGuard](https://github.com/titanfyre/RegistryGuard/releases/download/sdk-v0.1.1/registryguard-sdk-0.1.1.tar.gz)
- `remote-workstation-sdk-sdk` 0.1.1 â€” [Remote-Workstation-SDK](https://github.com/titanfyre/Remote-Workstation-SDK/releases/download/sdk-v0.1.1/remote-workstation-sdk-sdk-0.1.1.tar.gz)
- `storage-io-flight-recorder-sdk` 0.1.1 â€” [Storage-IO-Flight-Recorder](https://github.com/titanfyre/Storage-IO-Flight-Recorder/releases/download/sdk-v0.1.1/storage-io-flight-recorder-sdk-0.1.1.tar.gz)
- `titan-audio-link-sdk` 0.1.1 â€” [Titan-Audio-Link](https://github.com/titanfyre/Titan-Audio-Link/releases/download/sdk-v0.1.1/titan-audio-link-sdk-0.1.1.tar.gz)
- `titan-file-filter-sdk` 0.1.0 â€” [Titan-File-Filter](https://github.com/titanfyre/Titan-File-Filter/releases/download/sdk-v0.1.0/titan-file-filter-sdk-0.1.0.tar.gz)
- `titan-network-filter-sdk` 0.1.1 â€” [Titan-Network-Filter](https://github.com/titanfyre/Titan-Network-Filter/releases/download/sdk-v0.1.1/titan-network-filter-sdk-0.1.1.tar.gz)
- `usb-over-ip-sdk-sdk` 0.1.1 â€” [USB-over-IP-SDK](https://github.com/titanfyre/USB-over-IP-SDK/releases/download/sdk-v0.1.1/usb-over-ip-sdk-sdk-0.1.1.tar.gz)
- `usb-trace-sdk-sdk` 0.1.1 â€” [USB-Trace-SDK](https://github.com/titanfyre/USB-Trace-SDK/releases/download/sdk-v0.1.1/usb-trace-sdk-sdk-0.1.1.tar.gz)
- `user-backed-virtual-disk-sdk-sdk` 0.1.1 â€” [User-Backed-Virtual-Disk-SDK](https://github.com/titanfyre/User-Backed-Virtual-Disk-SDK/releases/download/sdk-v0.1.1/user-backed-virtual-disk-sdk-sdk-0.1.1.tar.gz)
- `vdevice-sdk` 1.0.5 â€” [Vdevice](https://github.com/TitanCSA/Vdevice/releases/download/sdk-v1.0.5/vdevice-sdk-1.0.5.tar.gz)
- `virtual-camera-sdk-sdk` 0.1.1 â€” [Virtual-Camera-SDK](https://github.com/titanfyre/Virtual-Camera-SDK/releases/download/sdk-v0.1.1/virtual-camera-sdk-sdk-0.1.1.tar.gz)
- `virtual-network-adapter-sdk-sdk` 0.1.1 â€” [Virtual-Network-Adapter-SDK](https://github.com/titanfyre/Virtual-Network-Adapter-SDK/releases/download/sdk-v0.1.1/virtual-network-adapter-sdk-sdk-0.1.1.tar.gz)
- `virtual-storage-fault-lab-sdk` 0.1.1 â€” [Virtual-Storage-Fault-Lab](https://github.com/titanfyre/Virtual-Storage-Fault-Lab/releases/download/sdk-v0.1.1/virtual-storage-fault-lab-sdk-0.1.1.tar.gz)
- `windows-gamepad-bridge-sdk` 0.1.0 â€” [Windows-Gamepad-Bridge](https://github.com/StrikeFound/Windows-Gamepad-Bridge/releases/download/sdk-v0.1.0/windows-gamepad-bridge-sdk-0.1.0.tar.gz)
- `windows-gamepad-filter-sdk` 0.1.0 â€” [Windows-Gamepad-Filter](https://github.com/titanfyre/Windows-Gamepad-Filter/releases/download/sdk-v0.1.0/windows-gamepad-filter-sdk-0.1.0.tar.gz)
- `windows-input-bridge-sdk` 0.1.0 â€” [Windows-Input-Bridge](https://github.com/StrikeFound/Windows-Input-Bridge/releases/download/sdk-v0.1.0/windows-input-bridge-sdk-0.1.0.tar.gz)
- `windows-input-filter-sdk` 0.1.0 â€” [Windows-Input-Filter](https://github.com/titanfyre/Windows-Input-Filter/releases/download/sdk-v0.1.0/windows-input-filter-sdk-0.1.0.tar.gz)
- `windows-keyboard-mouse-bridge-sdk` 0.1.0 â€” [Windows-Keyboard-Mouse-Bridge](https://github.com/StrikeFound/Windows-Keyboard-Mouse-Bridge/releases/download/sdk-v0.1.0/windows-keyboard-mouse-bridge-sdk-0.1.0.tar.gz)
- `windows-keyboard-mouse-filter-sdk` 0.1.0 â€” [Windows-Keyboard-Mouse-Filter](https://github.com/titanfyre/Windows-Keyboard-Mouse-Filter/releases/download/sdk-v0.1.0/windows-keyboard-mouse-filter-sdk-0.1.0.tar.gz)
- `windows-virtual-devices-sdk` 0.1.0 â€” [Windows-Virtual-Devices](https://github.com/titanfyre/Windows-Virtual-Devices/releases/download/sdk-v0.1.0/windows-virtual-devices-sdk-0.1.0.tar.gz)
- `windows-virtual-usb-sdk` 0.1.0 â€” [Windows-Virtual-USB](https://github.com/StrikeFound/Windows-Virtual-USB/releases/download/sdk-v0.1.0/windows-virtual-usb-sdk-0.1.0.tar.gz)

## Simple project names

37 accessible SDKs now also use their project names, for example `interceptor`, `browser-control-sdk` and `cloud-files-sdk`. These aliases depend on the original ports, which remain available for existing consumers. Include **both names** in the Git registry package list, for example `["interceptor", "interceptor-sdk"]`, then depend on `interceptor` in your manifest. Use the updated immutable baseline from `publication.json`.

Four StrikeFound upstream repositories are unavailable; no new alias is published for those projects. This remains a custom registry, not the Microsoft curated catalog.

- `autohotinterceptor` forwards to `autohotinterceptor-sdk`
- `browser-control-sdk` forwards to `browser-control-sdk-sdk`
- `changed-block-tracking-sdk` forwards to `changed-block-tracking-sdk-sdk`
- `cloud-files-sdk` forwards to `cloud-files-sdk-sdk`
- `connection-trace-studio` forwards to `connection-trace-studio-sdk`
- `file-trace-studio` forwards to `file-trace-studio-sdk`
- `fyradevice` forwards to `fyradevice-sdk`
- `fyrainput` forwards to `fyrainput-sdk`
- `fyrainput-gamepad` forwards to `fyrainput-gamepad-sdk`
- `fyrainput-keyboard-mouse` forwards to `fyrainput-keyboard-mouse-sdk`
- `hid-access-control` forwards to `hid-access-control-sdk`
- `interception-v2` forwards to `interception-v2-sdk`
- `interceptor` forwards to `interceptor-sdk`
- `interceptor-gamepad-controller` forwards to `interceptor-gamepad-controller-sdk`
- `interceptor-keyboard-mouse` forwards to `interceptor-keyboard-mouse-sdk`
- `interceptor-multilang` forwards to `interceptor-multilang-sdk`
- `network-emulation-sdk` forwards to `network-emulation-sdk-sdk`
- `packet-capture-sdk` forwards to `packet-capture-sdk-sdk`
- `process-trace-studio` forwards to `process-trace-studio-sdk`
- `processguard-sdk` forwards to `processguard-sdk-sdk`
- `registryguard` forwards to `registryguard-sdk`
- `remote-workstation-sdk` forwards to `remote-workstation-sdk-sdk`
- `storage-io-flight-recorder` forwards to `storage-io-flight-recorder-sdk`
- `titan-audio-link` forwards to `titan-audio-link-sdk`
- `titan-file-filter` forwards to `titan-file-filter-sdk`
- `titan-network-filter` forwards to `titan-network-filter-sdk`
- `usb-over-ip-sdk` forwards to `usb-over-ip-sdk-sdk`
- `usb-trace-sdk` forwards to `usb-trace-sdk-sdk`
- `user-backed-virtual-disk-sdk` forwards to `user-backed-virtual-disk-sdk-sdk`
- `vdevice` forwards to `vdevice-sdk`
- `virtual-camera-sdk` forwards to `virtual-camera-sdk-sdk`
- `virtual-network-adapter-sdk` forwards to `virtual-network-adapter-sdk-sdk`
- `virtual-storage-fault-lab` forwards to `virtual-storage-fault-lab-sdk`
- `windows-gamepad-filter` forwards to `windows-gamepad-filter-sdk`
- `windows-input-filter` forwards to `windows-input-filter-sdk`
- `windows-keyboard-mouse-filter` forwards to `windows-keyboard-mouse-filter-sdk`
- `windows-virtual-devices` forwards to `windows-virtual-devices-sdk`

- `node-interceptor` forwards to `node-interceptor-sdk` (LGPL-3.0-or-later, Windows x64).
