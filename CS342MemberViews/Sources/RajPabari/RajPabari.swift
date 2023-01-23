//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct RajPabari: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "RajPabari"))
                DescriptionView(
                    name: "Raj Pabari",
                    title: "Student at Stanford",
                    description: Bundle.module.markdown(fromFileNamed: "RajPabariBio")
                )
                FunFact()
            }
        }
            .navigationTitle("Raj")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct RajPabari_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RajPabari(navigationPath: .constant(NavigationPath()))
        }
    }
}
