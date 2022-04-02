// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "GIO",
    products: [ .library(name: "GIO", targets: ["GIO"]) ],
    dependencies: [
        .package(url: "https://github.com/rhx/gir2swift.git",    branch: "development"),
        .package(url: "https://github.com/rhx/SwiftGObject.git", branch: "development")
    ],
    targets: [
        .target(
            name: "GIO",
            dependencies: [
                .product(name: "GLibObject", package: "SwiftGObject")
            ],
            plugins: [
                .plugin(name: "gir2swift-plugin", package: "gir2swift")
            ]
        ),
        .testTarget(name: "GIOTests", dependencies: ["GIO"]),
    ]
)
