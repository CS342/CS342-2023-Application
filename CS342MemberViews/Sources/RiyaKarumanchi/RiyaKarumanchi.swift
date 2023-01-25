//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct RiyaKarumanchi: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "RiyaKarumanchi"))
                DescriptionView(
                    name: "Riya Karumanchi",
                    title: "CS & Comp Bio Undergrad",
                    description: Bundle.module.markdown(fromFileNamed: "RiyaKarumanchiBio")
                )
                TwitterUsername()
            }
        }
        .background(Color(red: 0.69, green: 0.90, blue: 1.00, opacity: 1.0))
        
            .navigationTitle("Riya")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct RiyaKarumanchi_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RiyaKarumanchi(navigationPath: .constant(NavigationPath()))
        }
    }
}

