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
            Text("Oliver Aalami, MD")
                .font(.title2.bold())
            Text("Director of Stanford’s Biodesign for Digital Health")
                .font(.title3)
            Text(description)
                .padding()
        }
    }
    
    
    private var description: LocalizedStringKey {
        guard let descriptionPath = Bundle.module.path(forResource: "OliverAalamiBio", ofType: "md"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return LocalizedStringKey(description)
    }
}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
