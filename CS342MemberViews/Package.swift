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
        .library(name: "OliverAalami", targets: ["OliverAalami"]),
        .library(name: "AnanyaVasireddy", targets:["AnanyaVasireddy"])
    ],
    targets: [
        .target(
            name: "InstructorViews"
        ),
        .target(
            name: "PaulSchmiedmayer",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/PaulSchmiedmayer.jpeg.license",
                "Resources/PaulSchmiedmayerBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "OliverAalami",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/OliverAalami.jpeg.license",
                "Resources/OliverAalamiBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AnanyaVasireddy",
            exclude: [
                "Resources/AnanyaVasireddy.jpg.license",
                "Resources/AnanyaVasireddyBio.md.license",
                "Resources/Raag.jpg.license"
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
