//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct AshleyGriffin: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "AshleyGriffin"))
                DescriptionView(
                    name: "Ashley Griffin, Ph.D.",
                    title: "Postdoctoral Researcher",
                    description: Bundle.module.markdown(fromFileNamed: "AshleyGriffinBio")
                )
                TwitterUsername()
            }
        }
            .navigationTitle("Ashley")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AshleyGriffin_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AshleyGriffin(navigationPath: .constant(NavigationPath()))
        }
    }
}
