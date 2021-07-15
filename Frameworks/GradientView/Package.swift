// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GradientView",
  platforms: [
    .iOS(SupportedPlatform.IOSVersion.v13)
  ],
  products: [
    .library(
      name: "GradientView",
      targets: ["GradientView"]),
  ],
  targets: [
    .target(
      name: "GradientView",
      dependencies: []),
    .testTarget(
      name: "GradientViewTests",
      dependencies: ["GradientView"]),
  ]
)
