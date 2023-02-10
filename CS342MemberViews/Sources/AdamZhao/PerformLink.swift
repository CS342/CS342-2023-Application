//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct PerformLink: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        if let performUrl {
            Button {
                openURL(performUrl)
            } label: {
                Text("Click for a short performance")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.bordered)
                .padding()
        }
    }
    
    
    private var performUrl: URL? {
        URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    }
}


struct TwitterUsername_Previews: PreviewProvider {
    static var previews: some View {
        PerformLink()
    }
}
