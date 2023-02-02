//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct LinkedInView: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        HStack {
            Text(bio)
                .font(.body)
                .multilineTextAlignment(.leading)
                .padding(.bottom, -15)
        }.padding(.horizontal, 20)
        
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("Check out my professional profile!")
                    .frame(maxWidth: .infinity, idealHeight: 40)
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            .padding()
        }
    }
    
    private var bio: String {
        guard let descriptionPath = Bundle.module.path(forResource: "JuliaRheeBio", ofType: "md"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return description
    }
    
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/julia-rhee")
    }
}


struct Linkedin_Previews: PreviewProvider {
     static var previews: some View {
        LinkedInView()
    }
}
