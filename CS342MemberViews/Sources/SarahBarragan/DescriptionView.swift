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
        VStack(spacing: 10) {
            Text("Sarah Barragan")
                .font(.custom("AmericanTypewriter", fixedSize: 36))
                .foregroundStyle(.indigo.gradient)
            Text("CS Undergraduate")
                .font(.system(size: 18, design: .serif))
                .foregroundStyle(.indigo.gradient)
            Text(description)
                .font(.system(size: 16, design: .serif))
                .padding(50)
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "SarahBarraganBio", ofType: "md"),
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
