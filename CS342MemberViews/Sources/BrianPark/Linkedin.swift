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
                Text("👔")
                    .frame(maxWidth: .infinity, idealHeight: 50)
                    .bold()
            }
                .buttonStyle(.bordered)
                .tint(.blue)
        }
    }


    private var linkedInURL: URL? {
        URL(string: "https://linkedin.com/in/jeongwoobrianpark")
    }
}


struct LinkedIn_Previews: PreviewProvider {
    static var previews: some View {
        LinkedIn()
    }
}
