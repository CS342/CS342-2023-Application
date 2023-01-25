//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct Github: View {
    @Environment(\.openURL) var openURL


    var body: some View {
        if let gitURL {
            Button {
                openURL(gitURL)
            } label: {
                Text("⚙️")
                    .frame(maxWidth: .infinity, idealHeight: 50)
                    .bold()
            }
                .buttonStyle(.bordered)
                .tint(.green)
        }
    }


    private var gitURL: URL? {
        URL(string: "https://github.com/brian-jw-park")
    }
}


struct Github_Previews: PreviewProvider {
    static var previews: some View {
        Github()
    }
}

