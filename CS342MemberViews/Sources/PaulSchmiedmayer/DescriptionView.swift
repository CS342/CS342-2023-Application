//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Paul Schmiedmayer, Ph.D.")
                .font(.title2.bold())
            Text("Postdoctoral Researcher")
                .font(.title3)
            Text(description)
                .padding()
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "PaulSchmiedmayerBio", ofType: "md"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return description
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
