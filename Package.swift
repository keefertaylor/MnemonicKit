// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MnemonicKit",
    products: [
        .library(
            name: "MnemonicKit",
            targets: ["MnemonicKit_iOS", "MnemonicKit_macOS"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift", 
            from: "1.3.2"
        )
    ],
    targets: [
        .target(
            name: "MnemonicKit_iOS",
            dependencies: ["CryptoSwift"],
            path: "MnemonicKit",
            exclude: ["Info.plist"]),
        .target(
            name: "MnemonicKit_macOS",
            dependencies: ["CryptoSwift"],
            path: "MnemonicKit",
            exclude: ["Info.plist"]),
        .testTarget(
            name: "MnemonicKitTests",
            dependencies: ["MnemonicKit"],
            exclude: ["Info.plist"]),
    ]
)