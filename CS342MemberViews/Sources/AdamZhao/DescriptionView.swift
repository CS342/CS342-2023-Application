//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI
import class Foundation.Bundle


struct DescriptionView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Adam Zhao")
                .font(.title2.bold())
            Text("Cellist, Photographer, Weightlifter")
                .font(.system(size: 10))
            Text(description)
                .padding()
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "AdamZhaoBio", ofType: "md"),
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
