// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/pocstyle2023/KMMBridgeStyle/com/pocstyle/kmmbridgekickstart/allshared-kmmbridge/1.0.0.4/allshared-kmmbridge-1.0.0.4.zip"
let remoteKotlinChecksum = "5306101bd032eb7bc57b0968b64fb7dcf00f81b1510246a154080dd5ed46d14a"
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