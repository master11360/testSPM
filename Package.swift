// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "testSPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "testSPM",
            targets: ["testSPM"]),
    ],
    dependencies: [.package(url: "https://github.com/appwrite/sdk-for-swift", from: "0.1.0")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "testSPM"),
        .testTarget(
            name: "testSPMTests",
            dependencies: ["testSPM"]),
    ]
)
