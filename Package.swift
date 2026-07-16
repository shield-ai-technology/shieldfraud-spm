// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let version = "2-0-0"
let shieldfraud_checksum = "0d7af4027fef332426d8f382d600d3f98057d52158dcd3bd1382b8018a86e81d"

let package = Package(
    name: "shieldfraud-spm",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ShieldFraud",
            targets: ["ShieldFraud"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ShieldFraud",
            url: "https://s3.amazonaws.com/cashshield-sdk/shield-ios-swift-\(version).zip",
            checksum: shieldfraud_checksum
        )
    ]
)
