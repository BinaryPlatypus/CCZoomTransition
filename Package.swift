// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CCZoomTransition",
    platforms: [
        .iOS(.v10), .tvOS(.v10)
    ],
    products: [
        .library(
            name: "CCZoomTransition",
            targets: ["CCZoomTransition"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CCZoomTransition",
            dependencies: [],
            path: "CCZoomTransition"
        )
    ]
)
