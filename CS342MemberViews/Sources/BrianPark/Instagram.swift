//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct Instagram: View {
    @Environment(\.openURL) var openURL


    var body: some View {
        if let instaURL {
            Button {
                openURL(instaURL)
            } label: {
                Text("📸")
                    .frame(maxWidth: .infinity, idealHeight: 50)
                    .bold()
            }
                .buttonStyle(.bordered)
                .tint(.black)
        }
    }


    private var instaURL: URL? {
        URL(string: "https://www.instagram.com/briannn__02/")
    }
}


struct Instagram_Previews: PreviewProvider {
    static var previews: some View {
        Instagram()
    }
}
