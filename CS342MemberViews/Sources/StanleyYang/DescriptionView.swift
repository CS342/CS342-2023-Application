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
            Text("Stanley Yang")
                .font(.title2.bold())
            Text("Undergraduate at Stanford")
                .font(.title3)
            Text(description)
                .font(.system(size: 16, design: .serif))
                .padding(50)
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "StanleyYangBio", ofType: "md"),
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
