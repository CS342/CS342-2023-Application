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
        if let linkedInURL {
            Button {
                openURL(linkedInURL)
            } label: {
                Text("@anushehchaudry")
                    .frame(idealWidth: 400, idealHeight: 32)
            }
            .tint(Color(hue: 0.633, saturation: 0.833, brightness: 0.553))
            .buttonStyle(.bordered)
                .padding()
        }
    }
    
    
    private var linkedInURL: URL? {
        URL(string: "https://www.linkedin.com/in/anushehchaudry/")
    }
}


struct LinkedInUsername_Previews: PreviewProvider {
    static var previews: some View {
        LinkedInUsername()
    }
}
