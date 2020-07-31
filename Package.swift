// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "VaporApp",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMinor(from: "3.3.0")),
        .package(url: "https://github.com/vapor/leaf.git", .upToNextMinor(from: "3.3.0")),
        .package(url: "https://github.com/mongodb/mongo-swift-driver.git", .upToNextMinor(from: "3.3.0")),
        .package(url: "https://github.com/vapor/websocket-kit.git", from: "2.0.0"),

    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "Leaf", "Mongo-Swift", "WebSocket"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)
