// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let cSettings: [CSetting] = [
    .headerSearchPath("private_header"),
    .define("EXTRA_DEFINE1"),
    .unsafeFlags([
        "-DEXTRA_DEFINE2",
    ])
]

let package = Package(
    name: "DemoCLibrary",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DemoCLibrary",
            targets: ["DemoCLibrary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/madmachineio/SwiftIO.git", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DemoCLibrary",
            dependencies: [
                .product(name: "CSwiftIO", package: "SwiftIO")
            ],
            cSettings: cSettings)
    ]
)
