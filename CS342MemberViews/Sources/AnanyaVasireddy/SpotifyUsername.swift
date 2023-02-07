//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct SpotifyUsername: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let spotifyURL {
            Button {
                openURL(spotifyURL)
            } label: {
                Text("Raagapella's Spotify")
                    .frame(maxWidth: 250, idealHeight: 32)
            }
            .tint(.mint)
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
    
    
    private var spotifyURL: URL? {
        URL(string: "https://open.spotify.com/artist/7biaLUJ0zBroX0Wj4hfiU9")
    }
}


struct SpotifyUsername_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyUsername()
    }
}
