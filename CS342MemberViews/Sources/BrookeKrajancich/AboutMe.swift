// swift-tools-version: 5.7

//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        VStack {
            Text("In my spare time, you'll find me:")
                .font(.body)
            Text("🏋🏼‍♀️ lifting heavy things")
                .font(.body)
                .padding(.vertical, 1.0)
            Text("🐶 cuddling my pup Maxwell")
                .font(.body)
                .padding(.vertical, 1.0)
            Text("🍷 enjoying a glass of wine")
                .font(.body)
                .padding(.vertical, 1.0)
        }
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
