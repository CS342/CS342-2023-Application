//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct JiahuiChen: View {
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "JiahuiChen"))
                DescriptionView(
                    name: "Jiahui Chen",
                    title: "Student at Stanford",
                    description: Bundle.module.markdown(fromFileNamed: "JiahuiChenBio")
                )
                RickRoll()
            }
        }
            .navigationTitle("Jiahui")
    }
    
    
    public init() {
    }
}


struct JiahuiChen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            JiahuiChen()
        }
    }
}
