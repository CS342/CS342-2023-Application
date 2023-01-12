// swift-tools-version: 5.7

//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import PackageDescription


let package = Package(
    name: "CS342MemberViews",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "OliverAalami", targets: ["OliverAalami"]),
        .library(name: "CarlosGuestrin", targets: ["CarlosGuestrin"]),
        .library(name: "PaulSchmiedmayer", targets: ["PaulSchmiedmayer"]),
        .library(name: "VishnuRavi", targets: ["VishnuRavi"]),
        .library(name: "AshleyGriffin", targets: ["AshleyGriffin"]),
        .library(name: "NicholasBernhardtLanier", targets: ["NicholasBernhardtLanier"]),
        .library(name: "RaghavSamavedam", targets: ["RaghavSamavedam"]),
        .library(name: "VarunShenoy", targets: ["VarunShenoy"])
    ],
    targets: [
        .target(name: "OliverAalami"),
        .target(name: "CarlosGuestrin"),
        .target(
            name: "PaulSchmiedmayer",
            exclude: [
                "Resources/PaulSchmiedmayer.jpeg.license",
                "Resources/PaulSchmiedmayerBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(name: "VishnuRavi"),
        .target(name: "AshleyGriffin"),
        .target(name: "NicholasBernhardtLanier"),
        .target(name: "RaghavSamavedam"),
        .target(name: "VarunShenoy")
    ]
)
