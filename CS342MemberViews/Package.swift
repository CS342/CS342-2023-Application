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
        .library(name: "PaulSchmiedmayer", targets: ["PaulSchmiedmayer"]),
        .library(name: "EmmyThamakaison", targets: ["EmmyThamakaison"])
    ],
    targets: [
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
        .target(
            name: "EmmyThamakaison",
            exclude: [
                "Resources/EmmyThamakaison.jpeg.license",
                "Resources/EmmyThamakaisonBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
