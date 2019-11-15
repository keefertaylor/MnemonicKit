// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MnemonicKit",
    products: [
        .library(
            name: "MnemonicKit",
            targets: ["MnemonicKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", .upToNextMinor(from: "1.1.3")),
    ],
    targets: [
        .target(
            name: "MnemonicKit",
            dependencies: ["CryptoSwift"]),
    ]
)

