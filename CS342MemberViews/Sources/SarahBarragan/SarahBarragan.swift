//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct SarahBarragan: View {
    @Binding var navigationPath: NavigationPath
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 25) {
                ProfileView()
                DescriptionView()
                InstagramUsername()
                ContentView()
            }
        }
            .navigationTitle("Sarah")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct SarahBarragan_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SarahBarragan(navigationPath: .constant(NavigationPath()))
        }
    }
}
