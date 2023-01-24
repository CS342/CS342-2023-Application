//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


@main
struct CS342Application: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                Image(systemName: "hand.wave.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.accentColor)
                    .padding()
                Text("Welcome to the CS342 2023 Application!")
                    .bold()
            }
        }
    }
}
