//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct Email: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let emailURL {
            Button {
                openURL(emailURL)
            } label: {
                Text("Email")
                    .frame(maxWidth: 90, idealHeight: 35)
            }
                .buttonStyle(.bordered)
                .tint(.black)
        }
    }
    
    
    private var emailURL: URL? {
        URL(string: "mailto:emmyst@stanford.edu")
    }
}


struct Email_Previews: PreviewProvider {
    static var previews: some View {
        Email()
    }
}
