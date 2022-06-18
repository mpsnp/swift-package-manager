// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "APkg",
    products: [
        .library(name: "A", targets: ["A"]),
    ],
    dependencies: [
        .package(path: "../BPkg"),
    ],
    targets: [
        .target(name: "A",
                dependencies: [
                    "Utils",
                    .product(name: "UtilsInB",
                             package: "BPkg",
                             moduleAliases: ["Utils": "FooUtils"]
                            ),
                ]),
        .target(name: "Utils", dependencies: [])
    ]
)
