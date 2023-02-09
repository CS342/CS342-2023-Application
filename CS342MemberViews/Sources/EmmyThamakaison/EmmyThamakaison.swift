//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct EmmyThamakaison: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView()
                DescriptionView()
                BubbleView()
                    .offset(y: -30)
                HStack(spacing: 40) {
                    LinkedIn()
                    GitHub()
                }
                    .offset(y: -50)
                    .padding([.bottom], 50)
            }
            .offset(y: 80)
        }
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct EmmyThamakaison_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            EmmyThamakaison(navigationPath: .constant(NavigationPath()))
        }
    }
}
