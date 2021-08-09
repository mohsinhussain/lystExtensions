// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LystExtensions",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LystExtensions",
            targets: ["LystExtensions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/7glyphs/SwiftyShadow", from: "1.7.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LystExtensions",
            dependencies: [
                .product(name: "SwiftyShadow", package: "SwiftyShadow"),
            ]),
        .testTarget(
            name: "LystExtensionsTests",
            dependencies: ["LystExtensions"]),
    ]
)
