//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct LinkedinUsername: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("Rhea's Linkedin")
                    .frame(
                        maxWidth: .infinity,
                        idealHeight: 100
                    )
                    .foregroundColor(.pink)
                    .bold()
                    .background(
                        RoundedRectangle(
                            cornerRadius: 20,
                            style: .continuous
                        )
                                .stroke(
                                    .pink, lineWidth: 2
                                )
                                .frame(
                                    width: 175, height: 50
                                )
                            )
            }
                .buttonStyle(.borderless)
                .padding()
        }
    }
    
    
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/rhea-malhotra-198744142/")
    }
}


struct LinkedinUsername_Previews: PreviewProvider {
    static var previews: some View {
        LinkedinUsername()
    }
}
