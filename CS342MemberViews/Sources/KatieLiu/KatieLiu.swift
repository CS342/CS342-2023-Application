//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct KatieLiu: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "KatieLiu"))
                DescriptionView(
                    name: "Katie Liu",
                    title: "B.S. Computer Science and Music",
                    description: Bundle.module.markdown(fromFileNamed: "KatieLiuBio")
                )
                // TwitterUsername()
            }
        }
            .navigationTitle("Katie")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct KatieLiu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            KatieLiu(navigationPath: .constant(NavigationPath()))
        }
    }
}
