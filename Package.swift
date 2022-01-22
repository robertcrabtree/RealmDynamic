// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RealmUmbrella",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "RealmUmbrella",
            type: .dynamic,
            targets: ["RealmUmbrella"]
        ),
        .library(
            name: "RealmUmbrella.static",
            targets: ["RealmUmbrella"]
        ),
    ],
    dependencies: [
        .package(name: "Realm", url: "https://github.com/realm/realm-cocoa", "10.0.0"..<"11.0.0")
    ],
    targets: [
        .target(
            name: "RealmUmbrella",
            dependencies: [.product(name: "RealmSwift", package: "Realm")]
        ),
    ]
)
