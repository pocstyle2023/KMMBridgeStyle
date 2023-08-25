// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/pocstyle2023/KMMBridgeStyle/com/pocstyle/kmmbridgekickstart/allshared-kmmbridge/1.0.0.5/allshared-kmmbridge-1.0.0.5.zip"
let remoteKotlinChecksum = "0389f50d33e2b9f7d51e3945efeb34b09f30001d55c3ab594494fa15c640a0fe"
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