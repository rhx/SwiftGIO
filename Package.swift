// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GIO",
    products: [ .library(name: "GIO", targets: ["GIO"]) ],
    dependencies: [
        .package(name: "GLibObject", url: "https://github.com/rhx/SwiftGObject.git", .branch("master"))
    ],
    targets: [
        .target(name: "GIO", dependencies: ["GLibObject"]),
        .testTarget(name: "GIOTests", dependencies: ["GIO"]),
    ]
)
