//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct LinkedIn: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("LinkedIn")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
    
    
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/danny-park-67a0621b6/")
    }
}


struct LinkedIn_Previews: PreviewProvider {
    static var previews: some View {
        LinkedIn()
    }
}
