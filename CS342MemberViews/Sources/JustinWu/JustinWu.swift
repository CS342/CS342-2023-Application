//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct JustinWu: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 1) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "JustinWu"))
                DescriptionView(
                    name: "Justin Wu",
                    title: "Undergraduate",
                    description: Bundle.module.markdown(fromFileNamed: "JustinWuBio")
                )
                
                LinkedIn()
                Quiz()
            }
        }
            .navigationTitle("Justin")
    }
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct JustinWu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            JustinWu(navigationPath: .constant(NavigationPath()))
        }
    }
}
