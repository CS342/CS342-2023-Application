//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct LinkedInUsername: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("LinkedIn")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
    
    
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/ali-mottaghi")
    }
}


struct LinkedInUsername_Previews: PreviewProvider {
    static var previews: some View {
        LinkedInUsername()
    }
}
