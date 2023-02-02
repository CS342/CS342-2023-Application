//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct IdentifiableFact: Identifiable {
    var id = UUID()
    var fact: String
}

struct BubbleView: View {
    
    let facts = [
        IdentifiableFact(fact:"ROLES 💫: PM, Developer, Researcher"),
        IdentifiableFact(fact:"HOME 🐘: Bangkok, Thailand"),
        IdentifiableFact(fact:"INTERESTS 💥: HealthTech, entrepreneurship, longevity")
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(facts) { fact in
                Text("\(fact.fact)")
                    .foregroundColor(.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 10)
                    
                    .frame(width: 300, height: 80)
                    .background(Rectangle().fill(.black))
                        .cornerRadius(13)
                
                        .padding([.bottom], 20)
            }
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "EmmyThamakaisonBio", ofType: "md"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return description
    }
}


struct BubbleView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleView()
    }
}
