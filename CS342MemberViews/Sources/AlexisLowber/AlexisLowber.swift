//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct AlexisLowber: View {
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "AlexisLowber"))
                DescriptionView(
                    name: "Alexis Lowber",
                    title: "Biocomputation, MS",
                    description: Bundle.module.markdown(fromFileNamed: "AlexisLowberBio")
                )
            }
        }
        .navigationTitle("Alexis")
    }
    
    
    public init() { }
}


struct AlexisLowber_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AlexisLowber()
        }
    }
}
