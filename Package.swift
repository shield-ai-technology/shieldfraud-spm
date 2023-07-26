// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let version = "1-5-27"
let shieldfraud_checksum = "d24228856a33cdae99ac1fc40ad5827d50341c5972be02d215f1d99092fa4060"

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
