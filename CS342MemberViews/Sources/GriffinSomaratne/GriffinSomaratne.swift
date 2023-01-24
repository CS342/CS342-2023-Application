//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct GriffinSomaratne: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 32) {
                Backdrop(backdropImage: Bundle.module.image(fromFileNamed: "BackdropImage"))
                GriffinProfileView(profileImage: Bundle.module.image(fromFileNamed: "GriffinSomaratne"))
                    .offset(y: -164)
                    .padding(.bottom, -164)
                DescriptionView(
                    name: "Griffin Somaratne",
                    title: "Designer and Student",
                    description: Bundle.module.markdown(fromFileNamed: "GriffinSomaratneBio")
                )
                LinkedInButton()
            }
        }
            .navigationTitle("Griffin")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct GriffinSomaratne_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GriffinSomaratne(navigationPath: .constant(NavigationPath()))
        }
    }
}

