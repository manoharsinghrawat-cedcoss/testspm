// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Test SPM",
    platforms: [
            // Add support for all platforms starting from a specific version.
            .iOS(.v11)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Test SPM",
            targets: ["Test SPM"]),
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/manoharsinghrawat-cedcoss/testspm", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Test SPM",
            dependencies: []),
        .testTarget(
            name: "Test SPMTests",
            dependencies: ["Test SPM"]),
    ]
)
