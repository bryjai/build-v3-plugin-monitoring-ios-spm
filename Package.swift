// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Build-V3-Plugin-Monitoring-ios",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Build-V3-Plugin-Monitoring-ios",
            targets: ["Build-V3-Plugin-Monitoring-ios"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "Build-V3-Plugin-Monitoring-ios", url: "https://bryj-sdks.s3.eu-west-1.amazonaws.com/build/plugins/Build_V3_Plugin_Monitoring_ios/beta/1.0.2-beta.81/Build_V3_Plugin_Monitoring_ios_1.0.2-beta.81.xcframework.zip", checksum: "3a7edd5f866c9a7046e36acc698f1586e160361c3bf2fe3ae89d4284659f20ea")
    ]
)
