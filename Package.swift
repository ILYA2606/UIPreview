// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PreviewUIKit",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "PreviewUIKit",
            targets: ["PreviewUIKit"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PreviewUIKit",
            dependencies: [],
            path: "Sources"
        ),
    ]
)
