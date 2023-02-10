//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct RickRoll: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let rickRollURL {
            Button {
                openURL(rickRollURL)
            } label: {
                Text("Random favorite song of Jiahui")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
    
    
    private var rickRollURL: URL? {
        URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    }
}


struct RickRoll_Previews: PreviewProvider {
    static var previews: some View {
        RickRoll()
    }
}
