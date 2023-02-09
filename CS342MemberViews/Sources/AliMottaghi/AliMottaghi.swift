//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct AliMottaghi: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "AliMottaghi"))
                DescriptionView(
                    name: "Ali Mottaghi",
                    title: "PhD Student",
                    description: Bundle.module.markdown(fromFileNamed: "AliMottaghiBio")
                )
                LinkedInUsername()
            }
        }
            .navigationTitle("Ali")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AliMottaghi_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AliMottaghi(navigationPath: .constant(NavigationPath()))
        }
    }
}
