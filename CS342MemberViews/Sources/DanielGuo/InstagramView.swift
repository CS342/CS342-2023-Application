//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct InstagramView: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let instagramURL {
            Button {
                openURL(instagramURL)
            } label: {
                Text("Tap for Instagram: @dan_guo_")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
                .tint(.blue)
        }
    }
    
    
    private var instagramURL: URL? {
        URL(string: "https://instagram.com/dan_guo_")
    }
}


struct InstagramView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramView()
    }
}
