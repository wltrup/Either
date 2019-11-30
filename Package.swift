// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Either",
    products: [
        .library(
            name: "Either",
            targets: ["Either"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Either",
            dependencies: []),
        .testTarget(
            name: "EitherTests",
            dependencies: ["Either"]),
    ]
)
