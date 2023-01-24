//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct StanleyYang: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack() {
                ProfileView()
                DescriptionView()
                InstagramUsername()
                LinkedInUsername()
                GithubUsername()
                Spacer()
                Text("Here's some pictures of my trip to Japan!")
                JapanView()
            }
        }
            .navigationTitle("Stanley Yang")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct StanleyYang_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            StanleyYang(navigationPath: .constant(NavigationPath()))
        }
    }
}
