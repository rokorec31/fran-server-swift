// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Fran",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1),
        .Package(url: "https://github.com/vapor/fluent.git", majorVersion: 1),
        .Package(url: "https://github.com/vapor/postgresql-provider", majorVersion: 1, minor: 0),
        .Package(url:"https://github.com/matthijs2704/vapor-apns.git", majorVersion: 1, minor: 2)
    ],
    exclude: [
        "Config",
        "Resources",
        "Public",
        "Tests"
    ]
)
