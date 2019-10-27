// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Ch3",
    products: [
        .library(
            name: "Ch3",
            type: .static,
            targets: ["Ch3"]),
        ],
    targets: [
        .target(
            name: "Ch3",
            path: ".",
            sources: ["Ch3"],
            publicHeadersPath: "Ch3/include"
        )
    ]
)

