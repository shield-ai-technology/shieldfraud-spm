// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let version = "1-5-55"
let shieldfraud_checksum = "c9c3b568b96ae87d731a73727ace127f1b883d8746102c27fa0b4a7105f2c289"

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
