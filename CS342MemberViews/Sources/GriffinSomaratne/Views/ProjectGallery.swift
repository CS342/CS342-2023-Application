//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct ProjectGallery: View {
    var body: some View {
        HStack(spacing: 20) {
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "BlueFace"),
                title: "Blue Boy",
                category: "Art"
            )
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "ME103"),
                title: "FLOAT",
                category: "Design, Engineering"
            )
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "ME104"),
                title: "Porky",
                category: "Engineering"
            )
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "imi"),
                title: "imi.guide",
                category: "Design"
            )
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "hia"),
                title: "Neckline",
                category: "Art"
            )
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "Tear"),
                title: "Starface",
                category: "Art"
            )
            ProjectImage(
                heroImage: Bundle.module.image(fromFileNamed: "StanfordApp"),
                title: "Stanford Mobile App",
                category: "Design"
            )
        }
    }
}

struct ProjectGallery_Previews: PreviewProvider {
    static var previews: some View {
        ProjectGallery()
    }
}
