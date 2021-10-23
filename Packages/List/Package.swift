// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "List",
  platforms: [
    .iOS(.v14)
  ],
  products: [
    .library(name: "List", targets: ["List"])
  ],
  targets: [
    .target(name: "List", dependencies: [])
  ]
)
