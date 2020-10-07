// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MnemonicKit",
    products: [
        .library(
            name: "MnemonicKit",
            targets: ["MnemonicKit_iOS"]),
    ],
    targets: [
        .target(
            name: "MnemonicKit",
            dependencies: ["CryptoSwift"],
            path: "MnemonicKit",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "MnemonicKitTests",
            dependencies: ["MnemonicKit"],
            exclude: ["Info.plist"]),
    ]
)