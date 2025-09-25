// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ios-pcap-servey",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ios-pcap-servey",
            targets: ["HevSock5"]
        )
    ],
    targets: [
        .target(
            name: "HevSock5",
            dependencies: [
                "HevSocks5Server",
                "HevSocks5Tunnel",
            ]
        ),
        .binaryTarget(
            name: "HevSocks5Server",
            url: "https://github.com/alexlin-gogolook/ios-pcap-survey/releases/download/0.1.0/HevSocks5Server.xcframework.zip",
            checksum: "a769cdbc11b9317d02341d40ab7cfe2c985298215d01595d9b67a9e129ceeaad"
        ),
        .binaryTarget(
            name: "HevSocks5Tunnel",
            url: "https://github.com/alexlin-gogolook/ios-pcap-survey/releases/download/0.1.0/HevSocks5Tunnel.xcframework.zip",
            checksum: "9d9aa4e3d6432cfdd0125ec645b2326041fb0a714cf4baea6fa6177556de0f11"
        )
    ]
)
