//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
//

import InstructorViews
import SwiftUI


public struct HamedHekmat: View {
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "HamedHekmat"))
                DescriptionView(
                    name: "Hamed Hekmat",
                    title: "Sophomore Undergraduate Student at Stanford University",
                    description: Bundle.module.markdown(fromFileNamed: "HamedHekmatBio")
                )
                WikiGame()
            }
            .background(Color.green.opacity(0.5))
        }
        .navigationTitle("Hamed🗿")
    }
        
        public init() {
    }
}
    
    
struct HamedHekmat_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HamedHekmat()
        }
    }
}
