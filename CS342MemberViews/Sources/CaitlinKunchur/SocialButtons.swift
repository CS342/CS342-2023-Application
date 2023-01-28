//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct SocialButtons: View {
    @Environment(\.openURL) var openURL
    
    public var body: some View {
        HStack(spacing: 1) {
        if let instaURL {
            Button {
                openURL(instaURL)
            }
        label: {
            Bundle.module.image(fromFileNamed: "Instagram")
                .resizable()
                .padding(.horizontal, 5)
                .frame(width: 65, height: 40)
            }
        }
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            }
        label: {
            Bundle.module.image(fromFileNamed: "LinkedIn")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .padding(.horizontal, 5)
                .frame(width: 35, height: 40)
            }
        }
        if let githubURL {
            Button {
                openURL(githubURL)
            }
        label: {
            Bundle.module.image(fromFileNamed: "Github")
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .padding(.horizontal, 5)
                .frame(width: 60, height: 35)
            }
        }
        }
    }
    private var instaURL: URL? {
        URL(string: "https://instagram.com/caitlinkunchur")
    }
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/caitlin-kunchur/")
    }
    private var githubURL: URL? {
        URL(string: "https://github.com/ckunchur")
    }
}


struct Socials_Previews: PreviewProvider {
    static var previews: some View {
        SocialButtons()
    }
}
