// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/pocstyle2023/KMMBridgeStyle/com/pocstyle/kmmbridgekickstart/allshared-kmmbridge/0.2.3/allshared-kmmbridge-0.2.3.zip"
let remoteKotlinChecksum = "7090bd8bc5291a3c7355e532b7734fcf5eb5a1b8dcc9b6fc1a3951a0535e5efc"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)