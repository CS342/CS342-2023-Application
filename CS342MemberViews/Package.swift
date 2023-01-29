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
        .library(name: "EmmyThamakaison", targets: ["EmmyThamakaison"]),
        .library(name: "AshleyGriffin", targets: ["AshleyGriffin"]),
        .library(name: "StanleyYang", targets: ["StanleyYang"]),
        .library(name: "AudreyLin", targets: ["AudreyLin"]),
        .library(name: "OliverAalami", targets: ["OliverAalami"]),
        .library(name: "SherryXie", targets: ["SherryXie"]),
        .library(name: "RajPabari", targets: ["RajPabari"]),
        .library(name: "HamedHekmat", targets: ["HamedHekmat"]),
        .library(name: "JustinWu", targets: ["JustinWu"]),
        .library(name: "AndyWang", targets: ["AndyWang"]),
        .library(name: "ParthavShergill", targets: ["ParthavShergill"])
    ],
    targets: [
        .target(
            name: "StudentViews"
        ),
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
            name: "EmmyThamakaison",
            exclude: [
                "Resources/EmmyThamakaison.jpeg.license",
                "Resources/EmmyThamakaisonBio.md.license"
                ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "StanleyYang",
            exclude: [
                "Resources/StanleyYang.jpeg.license",
                "Resources/StanleyYangBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AudreyLin",
            dependencies: [
                .target(name: "StudentViews")
            ],
            exclude: [
                "Resources/AudreyLin.jpeg.license",
                "Resources/AudreyLinBio.md.license"
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
            name: "SherryXie",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AndyWang",
            exclude: [
                "Resources/AndyWang.jpg.license",
                "Resources/AndyWangBio.md.license",
                "Resources/Premiere.png.license",
                "Resources/Saxophone.jpg.license",
                "Resources/Volleyball.png.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "RajPabari",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/RajPabari.jpeg.license",
                "Resources/RajPabariBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "HamedHekmat",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/HamedHekmat.jpeg.license",
                "Resources/HamedHekmatBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "JustinWu",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/JustinWu.jpeg.license",
                "Resources/JustinWuBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AshleyGriffin",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/AshleyGriffin.jpeg.license",
                "Resources/AshleyGriffinBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "ParthavShergill",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/ParthavShergill.jpeg.license",
                "Resources/ParthavShergillBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
