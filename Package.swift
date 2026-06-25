// swift-tools-version:6.0

import PackageDescription

let package = Package(
  name: "IOSSecuritySuite",
  platforms: [
    .iOS(.v18)
  ],
  products: [
    .library(name: "IOSSecuritySuite", targets: ["IOSSecuritySuite"])
  ],
  targets: [
    .target(
      name: "IOSSecuritySuite",
      path: "./IOSSecuritySuite",
      exclude: ["IOSSecuritySuite.h", "Info.plist"],
      resources: [.copy("Resources/PrivacyInfo.xcprivacy")]
    )
  ],
  swiftLanguageModes: [.v5]
)
