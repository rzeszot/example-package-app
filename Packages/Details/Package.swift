// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Details",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(name: "Details", targets: ["Details"])
  ],
  targets: [
    .target(name: "Details"),
    .testTarget(name: "DetailsTests", dependencies: ["Details"])
  ]
)
