// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMImportWithMocks",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SPMImport",
            type: .dynamic,
            targets: ["SPMImport"]),
        .library(
            name: "Mocks",
            targets: ["Mocks"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Brightify/Cuckoo", from: "1.4.0")
    ],
    targets: [
        .target(
            name: "SPMImport",
            dependencies: []),
        .target(
            name: "Mocks",
            dependencies: ["SPMImport", "Cuckoo"]
        ),
        .testTarget(
            name: "SPMImportTests",
            dependencies: ["SPMImport"]),
    ]
)

