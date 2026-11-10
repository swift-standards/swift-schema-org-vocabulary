// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-schema-org-vocabulary",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Schema Org Vocabulary", targets: ["Schema Org Vocabulary"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-w3c/swift-w3c-json-ld.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-3986.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-8259.git", branch: "main"),
        .package(url: "https://github.com/swift-iso/swift-iso-8601.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Schema Org Vocabulary",
            dependencies: [
                .product(name: "W3C JSON-LD", package: "swift-w3c-json-ld"),
                .product(name: "RFC 3986", package: "swift-rfc-3986"),
                .product(name: "RFC 8259", package: "swift-rfc-8259"),
                .product(name: "ISO 8601", package: "swift-iso-8601"),
            ]
        ),
        .executableTarget(
            name: "Schema Org Vocabulary Generator",
            dependencies: [
                .product(name: "RFC 8259", package: "swift-rfc-8259")
            ]
        ),
        .testTarget(
            name: "Schema Org Vocabulary Tests",
            dependencies: [
                .target(name: "Schema Org Vocabulary")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
