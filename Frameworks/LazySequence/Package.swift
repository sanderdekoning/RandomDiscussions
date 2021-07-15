// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LazySequence",
    products: [
      .library(
        name: "LazySequence",
        targets: ["LazySequence"]),
    ],
    dependencies: [
      
    ],
    targets: [
      .target(
        name: "LazySequence",
        dependencies: []),
      .testTarget(
        name: "LazySequenceTests",
        dependencies: ["LazySequence"]),
    ]
)
