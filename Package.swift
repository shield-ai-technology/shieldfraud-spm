// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let version = "1-5-32"
let shieldfraud_checksum = "8492466a32b7bd16ba7fffce103585c8b422b01728f45f2e5c5084d1e13ad6ce"

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
