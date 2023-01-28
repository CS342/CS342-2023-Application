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
        .library(name: "CaitlinKunchur", targets: ["CaitlinKunchur"])
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
            name: "CaitlinKunchur",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/CaitlinKunchur.jpeg.license",
                "Resources/CaitlinKunchur-bio.md.license",
                "Resources/0151-cover.jpeg.license",
                "Resources/1975-cover.jpeg.license",
                "Resources/artemis-cover.jpeg.license",
                "Resources/car-cover.jpeg.license",
                "Resources/hobbit-cover.jpeg.license",
                "Resources/misery-cover.jpeg.license",
                "Resources/movement-cover.jpeg.license",
                "Resources/network-compressed.jpeg.license",
                "Resources/white-tiger.jpeg.license",
                "Resources/Instagram.jpeg.license",
                "Resources/Github.jpeg.license",
                "Resources/LinkedIn.jpeg.license",


            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
