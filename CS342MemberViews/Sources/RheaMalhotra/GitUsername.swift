//

// This source file is part of the CS342 2023 Application project

//

// SPDX-FileCopyrightText: 2023 Stanford University

//

// SPDX-License-Identifier: MIT

//


import SwiftUI


struct GitUsername: View {
    @Environment(\.openURL) var openURL


    var body: some View {
        if let gitURL {
            Button {
                openURL(gitURL)
            } label: {
                Text("Rhea's GitHub")

                    .frame(maxWidth: .infinity, idealHeight: 100).foregroundColor(.purple).bold().background(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)

                        .stroke(.purple, lineWidth: 2).frame(width: 175, height: 50)
                    )
            }

                .buttonStyle(.borderless).padding()
        }
    }


    private var gitURL: URL? {
        URL(string: "https://github.com/rhea-mal")
    }
}


struct GitUsername_Previews: PreviewProvider {
    static var previews: some View {
        GitUsername()
    }
}
