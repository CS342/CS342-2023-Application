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
        if let LinkedInURL {
            Button {
                openURL(LinkedInURL)
            } label: {
                Text("LinkedIn: Stanley Yang")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
                .tint(.blue)
        }
    }
    
    
    private var LinkedInURL: URL? {
        URL(string: "https://www.linkedin.com/in/stanleyjyang")
    }
}


struct LinkedInUsername_Previews: PreviewProvider {
    static var previews: some View {
        LinkedInUsername()
    }
}
