// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebEngageFramework",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "WebEngageFramework",
            targets: ["WebengageSPM"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WebengageSPM",
            dependencies: [.target(name: "WebEngage", condition: .when(platforms: [.iOS]))],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath(".")]
        ),
        .binaryTarget(
            name: "WebEngage",
            url:"https://github.com/amir-ardalanuk/WebEngageSPMFramework/raw/master/WebEngage.xcframework.zip",
            checksum: "4ce62365b6146c1269f1abbcc2fc861ed793335f655f4eadd7cbd22bf283abc4"
        )
    ]
)
