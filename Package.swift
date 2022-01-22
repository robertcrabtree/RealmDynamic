// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RealmDynamic",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RealmDynamic",
            type: .dynamic,
            targets: ["RealmDynamic"]
        ),
        .library(
            name: "RealmDynamic.static",
            targets: ["RealmDynamic"]
        ),
    ],
    dependencies: [
        .package(
            name: "Realm",
            url: "https://github.com/realm/realm-cocoa",
            "10.0.0"..<"11.0.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RealmDynamic",
            dependencies: [
                .product(name: "RealmSwift", package: "Realm")
            ]
        ),
        .testTarget(
            name: "RealmDynamicTests",
            dependencies: ["RealmDynamic"]),
    ]
)
