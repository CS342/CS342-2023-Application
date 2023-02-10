//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct SpotifyButton: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let spotifyURL {
            Button {
                openURL(spotifyURL)
            } label: {
                Text("My favorite song rn")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
            .tint(.green)
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
    
    
    private var spotifyURL: URL? {
        URL(string: "https://open.spotify.com/track/1F3jwY8g6tNGpIctctYu4D?si=e99ffd5dd3b9409e")
    }
}


struct SpotifyButton_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyButton()
    }
}
