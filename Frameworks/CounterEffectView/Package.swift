// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CounterEffectView",
  products: [
    .library(
      name: "CounterEffectView",
      targets: ["CounterEffectView"]),
  ],
  targets: [
    .target(
      name: "CounterEffectView",
      dependencies: []),
    .testTarget(
      name: "CounterEffectViewTests",
      dependencies: ["CounterEffectView"]),
  ]
)
