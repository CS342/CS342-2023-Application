//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct WCA: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let wcaURL {
            Button {
                openURL(wcaURL)
            } label: {
                Text("WCA")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
    
    
    private var wcaURL: URL? {
        URL(string: "https://www.worldcubeassociation.org/persons/2015PARK13")
    }
}


struct WCA_Previews: PreviewProvider {
    static var previews: some View {
        WCA()
    }
}
