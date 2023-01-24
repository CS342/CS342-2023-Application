//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct AnushehChaudry: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 20) {
                HeaderView()
                ProfileView()
                DescriptionView()
                LinkedInUsername()
                VStack(spacing: 8) {
                    Text("Family")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                    FamView()
                    Text("Friends")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                    FriendsView()
                    Text("Fav View")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color.blue)
                    PlaceView()
                }
            }
        }
        .background(Color(hue: 0.533, saturation: 0.116, brightness: 0.97))
            .navigationTitle("Anusheh")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AnushehChaudry_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AnushehChaudry(navigationPath: .constant(NavigationPath()))
        }
    }
}
