// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftQuartzCoreExtension",
    products: [
        .library(
            name: "SwiftQuartzCoreExtension",
            targets: ["SwiftQuartzCoreExtension"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftQuartzCoreExtension"
        ),
        .testTarget(
            name: "SwiftQuartzCoreExtensionTests",
            dependencies: ["SwiftQuartzCoreExtension"]
        ),
    ]
)
