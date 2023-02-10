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
        if let linkedInURL {
            Button {
                openURL(linkedInURL)
            } label: {
                Text("LinkedIn")
                    .frame(maxWidth: 90, idealHeight: 35)
            }
                .buttonStyle(.bordered)
                .tint(.black)
        }
    }
    
    
    private var linkedInURL: URL? {
        URL(string: "https://www.linkedin.com/in/emmy-thamakaison")
    }
}


struct LinkedIn_Previews: PreviewProvider {
    static var previews: some View {
        LinkedIn()
    }
}
