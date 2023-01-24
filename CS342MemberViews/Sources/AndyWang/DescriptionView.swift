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
        VStack(spacing: 25) {
            HStack(spacing: 30) {
                ProfileView()
                VStack(spacing: 8) {
                    Text("Andy Wang")
                        .font(.title2.bold())
                    Text("Student")
                        .font(.title3)
                }
            }
            
            
            Text(description)
                .padding()
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "AndyWangBio", ofType: "md"),
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
