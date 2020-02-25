// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Either",
    platforms: [
        .iOS(.v11),
        .watchOS(.v5),
        .tvOS(.v11),
        .macOS(.v10_14)
    ],
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
