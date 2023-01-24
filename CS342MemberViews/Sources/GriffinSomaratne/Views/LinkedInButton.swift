//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct LinkedInButton: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("Add me on LinkedIn!")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
    
    
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/griffinsomaratne/")
    }
}


struct LinkedInButton_Previews: PreviewProvider {
    static var previews: some View {
        LinkedInButton()
    }
}
