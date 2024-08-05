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
        .binaryTarget(name: "Build-V3-Plugin-Monitoring-ios", url: "https://bryj-sdks.s3.eu-west-1.amazonaws.com/build/plugins/Build_V3_Plugin_Monitoring_ios/beta/1.0.1-beta.78/Build_V3_Plugin_Monitoring_ios_1.0.1-beta.78.xcframework.zip", checksum: "de1fb21297df1113d92b114378503f013aec4836467ebb2a9ee447b4cd59dc27")
    ]
)
