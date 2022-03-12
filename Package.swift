// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftSideways",
    platforms: [.macOS("11.0"), .iOS("14.0")],
    products: [
        .library(name: "Sideways", targets: ["Sideways"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Sideways",
            dependencies: [],
            path: "Sources"
        ),
    ]
)
