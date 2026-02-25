// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UmainTokensSPM",
    platforms: [
        .iOS(.v17),
        .macOS(.v13),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "UmainDesignToken",
            targets: ["UmainDesignToken"]
        )
    ],
    targets: [
        .target(
            name: "UmainDesignToken",
            path: "Sources/UmainDesignToken"
        ),
        .testTarget(
            name: "UmainDesignTokenTests",
            dependencies: ["UmainDesignToken"]
        )
    ]
)
