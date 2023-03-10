// swift-tools-version: 5.7

//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// swiftlint:disable file_length
import PackageDescription


let package = Package(
    name: "CS342MemberViews",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "AdamZhao", targets: ["AdamZhao"]),
        .library(name: "PaulSchmiedmayer", targets: ["PaulSchmiedmayer"]),
        .library(name: "EmmyThamakaison", targets: ["EmmyThamakaison"]),
        .library(name: "OliverAalami", targets: ["OliverAalami"]),
        .library(name: "RajPabari", targets: ["RajPabari"]),
        .library(name: "AshleyGriffin", targets: ["AshleyGriffin"]),
        .library(name: "DannyPark", targets: ["DannyPark"]),
        .library(name: "RheaMalhotra", targets: ["RheaMalhotra"]),
        .library(name: "NatashaKacharia", targets: ["NatashaKacharia"]),
        .library(name: "AliMottaghi", targets: ["AliMottaghi"]),
        .library(name: "AnanyaVasireddy", targets: ["AnanyaVasireddy"]),
        .library(name: "ShriyaReddy", targets: ["ShriyaReddy"]),
        .library(name: "SonyaJin", targets: ["SonyaJin"]),
        .library(name: "AndyWang", targets: ["AndyWang"]),
        .library(name: "SarahBarragan", targets: ["SarahBarragan"]),
        .library(name: "StanleyYang", targets: ["StanleyYang"]),
        .library(name: "AudreyLin", targets: ["AudreyLin"]),
        .library(name: "JiahuiChen", targets: ["JiahuiChen"]),
        .library(name: "HamedHekmat", targets: ["HamedHekmat"]),
        .library(name: "JustinWu", targets: ["JustinWu"]),
        .library(name: "AnushehChaudry", targets: ["AnushehChaudry"]),
        .library(name: "SherryXie", targets: ["SherryXie"]),
        .library(name: "BrianPark", targets: ["BrianPark"]),
        .library(name: "ParthavShergill", targets: ["ParthavShergill"]),
        .library(name: "RachelWu", targets: ["RachelWu"]),
        .library(name: "RiyaKarumanchi", targets: ["RiyaKarumanchi"]),
        .library(name: "JenniferXu", targets: ["JenniferXu"]),
        .library(name: "BrookeKrajancich", targets: ["BrookeKrajancich"]),
        .library(name: "AlexisLowber", targets: ["AlexisLowber"]),
        .library(name: "GriffinSomaratne", targets: ["GriffinSomaratne"]),
        .library(name: "CaitlinKunchur", targets: ["CaitlinKunchur"]),
        .library(name: "AbhinavAgarwal", targets: ["AbhinavAgarwal"]),
        .library(name: "JenMoore", targets: ["JenMoore"]),
        .library(name: "JuliaRhee", targets: ["JuliaRhee"]),
        .library(name: "DanielGuo", targets: ["DanielGuo"]),
        .library(name: "SidGopisetty", targets: ["SidGopisetty"])
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
            name: "ShriyaReddy",
            exclude: [
                "Resources/ShriyaReddy.jpg.license",
                "Resources/IntroText.txt.license",
                "Resources/HobbyText.txt.license"
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
            name: "EmmyThamakaison",
            exclude: [
                "Resources/EmmyThamakaison.png.license",
                "Resources/EmmyThamakaisonBio.md.license",
                "Resources/LinkedInIcon.png.license"
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
            name: "AnushehChaudry",
            exclude: [
                "Resources/AnushehChaudry.jpeg.license",
                "Resources/AnushehChaudryBio.md.license"
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
        ),
        .target(
            name: "SarahBarragan",
            exclude: [
                "Resources/SarahBarragan.jpeg.license",
                "Resources/SarahBarraganBio.md.license",
                "Resources/beach.jpeg.license",
                "Resources/city.jpeg.license",
                "Resources/hike.jpeg.license",
                "Resources/stadium.jpeg.license"
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
            name: "RheaMalhotra",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/RheaMalhotra.jpeg.license",
                "Resources/RheaMalhotraBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AliMottaghi",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/AliMottaghi.jpeg.license",
                "Resources/AliMottaghiBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "NatashaKacharia",
            dependencies: [
                .target(name: "InstructorViews")
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
            name: "DannyPark",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/DannyPark.jpeg.license",
                "Resources/DannyParkBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "JiahuiChen",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/JiahuiChen.jpeg.license",
                "Resources/JiahuiChenBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "BrianPark",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/BrianPark.jpeg.license",
                "Resources/BrianParkBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AdamZhao",
            exclude: [
                "Resources/AdamZhaoBio.md.license",
                "Resources/Headshot_REAL.jpeg.license",
                "Resources/PhotoBio.md.license",
                "Resources/Stanford1.HEIC.license",
                "Resources/Stanford2.HEIC.license",
                "Resources/Stanford3.HEIC.license",
                "Resources/Stanford4.HEIC.license",
                "Resources/Stanford5.HEIC.license",
                "Resources/Sunset1.JPG.license",
                "Resources/Sunset2.JPG.license",
                "Resources/SunsetBackground.JPG.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "RiyaKarumanchi",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/RiyaKarumanchi.jpeg.license",
                "Resources/RiyaKarumanchiBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "BrookeKrajancich",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/BrookeKrajancich.png.license",
                "Resources/Background.jpg.license"
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
                "Resources/BackdropImage.jpeg.license",
                "Resources/BlueFace.jpeg.license",
                "Resources/hia.jpeg.license",
                "Resources/imi.jpeg.license",
                "Resources/ME103.jpeg.license",
                "Resources/ME104.jpeg.license",
                "Resources/StanfordApp.jpeg.license",
                "Resources/Tear.jpeg.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "SonyaJin",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/SonyaJin.jpg.license",
                "Resources/SonyaJinBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AlexisLowber",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/AlexisLowber.jpeg.license",
                "Resources/AlexisLowberBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "AbhinavAgarwal",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/AbhinavAgarwal.jpeg.license",
                "Resources/AbhinavAgarwalBio.md.license"
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
                "Resources/LinkedIn.jpeg.license"
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
        ),
        .target(
            name: "RachelWu",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "DanielGuo",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/DanGuo.jpeg.license",
                "Resources/DanGuoBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "JenMoore",
            exclude: [
                "Resources/Background.jpg.license",
                "Resources/JenMoore.jpg.license",
                "Resources/JenMooreBio.md.license",
                "Resources/NewYork.jpeg.license",
                "Resources/Riggy.jpeg.license",
                "Resources/Stanford.jpeg.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "JenniferXu",
            exclude: [
                "Resources/github-mark.png.license",
                "Resources/LI-In-Bug.png.license",
                "Resources/Xu_profpic.jpg.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "JuliaRhee",
            exclude: [
                "Resources/JuliaRheeHeadshot.jpg.license"
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .target(
            name: "SidGopisetty",
            dependencies: [
                .target(name: "InstructorViews")
            ],
            exclude: [
                "Resources/SidGopisetty.jpeg.license",
                "Resources/SidGopisettyBio.md.license"
            ],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
