//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct WebsiteLink: View {
    @Environment(\.openURL) var openURL
    
    private var websiteURL: URL? {
        URL(string: "https://bkrajancich.me/")
    }
    
    var body: some View {
        if let websiteURL {
            Button {
                openURL(websiteURL)
            } label: {
                Text("Visit my website!")
                    .frame(maxWidth: 300, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .foregroundColor(.white)
                .fontWeight(.black)
                .tint(Color(hue: 0.827, saturation: 0.669, brightness: 0.908))
                .padding(.vertical, 5.0)
        }
    }
}

struct WebsiteLink_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteLink()
    }
}
