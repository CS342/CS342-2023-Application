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
        .library(name: "RajPabari", targets: ["RajPabari"]),
        .library(name: "GriffinSomaratne", targets: ["GriffinSomaratne"])
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
            name: "GriffinSomaratne",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/GriffinSomaratne.jpeg.license",
                "Resources/GriffinSomaratneBio.md.license",
                "Resources/hia.jpeg.license",
                "Resources/imi.jpeg.license",
                "Resources/ME103.jpeg.license",
                "Resources/ME104.jpeg.license",
                "Resources/StanfordApp.jpeg.license",
                "Resources/Tear.jpeg.license",
                "Resources/BlueFace.jpeg.license"
            ],
            resources: [
                .process("Resources")
            ]
        )

    ]
)
