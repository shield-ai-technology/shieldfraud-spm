// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let version = "1-5-49"
let shieldfraud_checksum = "8771ccf4d421a28a86fe237ef8dfe77f31dd7677ff3c5319fe2b9e6f47a045e5"

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
