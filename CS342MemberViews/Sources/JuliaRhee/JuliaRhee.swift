//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

public struct JuliaRhee: View {
    @Binding var navigationPath: NavigationPath
    public var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(spacing: 2) {
                    HeadshotView()
                    Text("Julia Rhee")
                        .font(.title.bold())
                    Text("Stanford '25")
                    Text("Studying CS + Bio + Creative Writing")
                    Spacer()
                }
                VStack(spacing: 0) {
                    Text("About Me:").font(.headline).frame(width: 350, height: 20, alignment: .leading)
                    LinkedInView()
                }
            }
        }
        .navigationTitle("Julia :)")
    }
        
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            JuliaRhee(navigationPath: .constant(NavigationPath()))
        }
    }
}
