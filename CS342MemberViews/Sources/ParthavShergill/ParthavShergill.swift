//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI
import InstructorViews

public struct ParthavShergill: View {
    @Binding var navigationPath: NavigationPath
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "ParthavShergill"))
                DescriptionView(
                    name: "Parthav Shergill",
                    title: "Student",
                    description: Bundle.module.markdown(fromFileNamed: "ParthavShergillBio")
                )
                Divider()
                Text("Check out where I'm from!")
                MapView()
                    .frame(height:400)
                    .padding()
                Divider()
                RandomQuote()
            }
        }
        .navigationTitle("Parthav")
    }
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct ParthavShergill_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ParthavShergill(navigationPath: .constant(NavigationPath()))
        }
    }
}
