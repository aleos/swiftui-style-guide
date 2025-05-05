// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "SwiftUIStyleExamples",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .watchOS(.v11),
        .visionOS(.v2),
        .tvOS(.v18),
    ],
    products: [
        .library(
            name: "SwiftUIStyleExamples",
            targets: ["SwiftUIStyleExamples"]
        )
    ],
    targets: [
        .target(
            name: "SwiftUIStyleExamples",
            dependencies: [],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals"),
                .enableExperimentalFeature("StrictConcurrency"),
            ]
        ),
        .testTarget(
            name: "SwiftUIStyleExamplesTests",
            dependencies: ["SwiftUIStyleExamples"]
        ),
    ]
)
