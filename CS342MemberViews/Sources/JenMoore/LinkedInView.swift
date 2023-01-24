//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct LinkedInView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        if let linkedIn {
            Button {
                openURL(linkedIn)
            } label: {
                Text("My LinkedIn")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 191 / 255, green: 127 / 255, blue: 110 / 255))
                .padding()
        }
    }
    
    
    private var linkedIn: URL? {
        URL(string: "https://www.linkedin.com/in/jlmoore20/")
    }
}


struct LinkedInView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedInView()
    }
}
