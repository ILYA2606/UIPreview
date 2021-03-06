// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PreviewUIKit",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "PreviewUIKit",
            targets: ["PreviewUIKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PreviewUIKit",
            dependencies: []),
    ]
)
