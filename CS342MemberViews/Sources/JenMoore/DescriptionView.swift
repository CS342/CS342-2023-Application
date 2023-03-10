//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct DescriptionView: View {
    public var body: some View {
        VStack(spacing: 8) {
            Text("Jen Moore")
                .font(.custom(
                    "Menlo-Bold",
                    fixedSize: 30
                ))
            Text("Stanford CS Major")
                .font(.title3)
                .italic()
            HStack {
                Text(description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, -18)
                LinkedInView()
            }.padding(.horizontal, 20)
        }
        .padding(.bottom, 0)
    }
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "JenMooreBio", ofType: "md"),
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
