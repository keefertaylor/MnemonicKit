// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MnemonicKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v9)//,
    ],
    products: [
        .library(
            name: "MnemonicKit",
            targets: ["MnemonicKit_iOS"]),
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
    ]
)