//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct GitHub: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let gitHubURL {
            Button {
                openURL(gitHubURL)
            } label: {
                Text("GitHub")
                    .frame(maxWidth: 90, idealHeight: 35)
            }
                .buttonStyle(.bordered)
                .tint(.black)
        }
    }
    
    
    private var gitHubURL: URL? {
        URL(string: "https://github.com/emmyxth")
    }
}


struct GitHub_Previews: PreviewProvider {
    static var previews: some View {
        GitHub()
    }
}
