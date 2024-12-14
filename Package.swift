// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "EasyLayout",
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
