//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct InstagramUsername: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let instagramURL {
            Button {
                openURL(instagramURL)
            } label: {
                Text("Ananya's Instagram")
                    .frame(maxWidth: 250, idealHeight: 32)
            }
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
    
    
    private var instagramURL: URL? {
        URL(string: "https://www.instagram.com/ananya_vasireddy/?hl=en")
    }
}


struct InstagramUsername_Previews: PreviewProvider {
    static var previews: some View {
        InstagramUsername()
    }
}
