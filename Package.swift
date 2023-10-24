// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "PizzaDesignSystemUI",
    platforms: [
        .iOS(.v15),
        .tvOS(.v15), 
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "PizzaDesignSystemUI",
            targets: ["PizzaDesignSystemUI"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PizzaKit/pizzakit",
            from: "1.0.1"
        )
    ],
    targets: [
        .target(
            name: "PizzaDesignSystemUI",
            dependencies: [
                .product(name: "PizzaKit", package: "pizzakit")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
