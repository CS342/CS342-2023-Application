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
                    .frame(maxWidth: 100, idealHeight: 35)
            }
                .buttonStyle(.borderedProminent)
                .tint(.black)
        }
    }
    
    
    private var linkedInURL: URL? {
        URL(string: "https://www.linkedin.com/in/adam-zhao-4b05651b3/")
    }
}


struct LinkedIn_Previews: PreviewProvider {
    static var previews: some View {
        LinkedIn()
    }
}
