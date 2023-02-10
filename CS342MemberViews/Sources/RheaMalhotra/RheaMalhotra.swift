//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct RheaMalhotra: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 30) {
                Color.purple
                                .ignoresSafeArea()
                ProfileView()
                DescriptionView()
                DescriptionText()
                HStack(spacing: 2) {
                    LinkedinUsername()
                    GitUsername()
                }
            }
        }
            .navigationTitle("Rhea!")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct RheaMalhotra_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RheaMalhotra(navigationPath: .constant(NavigationPath()))
        }
    }
}
