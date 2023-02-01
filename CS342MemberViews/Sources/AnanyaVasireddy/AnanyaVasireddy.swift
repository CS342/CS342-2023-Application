//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct AnanyaVasireddy: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 30) {
                ProfileView()
                DescriptionView()
                InstagramUsername()
                RaagView()
                SpotifyUsername()
            }
        }
            .navigationTitle("Ananya")
            .background(Color(hue: 0.35, saturation: 0.1, brightness: 0.92))
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AnanyaVasireddy_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AnanyaVasireddy(navigationPath: .constant(NavigationPath()))
        }
    }
}
