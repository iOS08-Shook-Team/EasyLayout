// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "EasyLayout",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "EasyLayout",
            targets: ["EasyLayout"]),
    ],
    targets: [
        .target(
            name: "EasyLayout"),
        .testTarget(
            name: "EasyLayoutTests",
            dependencies: ["EasyLayout"]
        ),
    ]
)
