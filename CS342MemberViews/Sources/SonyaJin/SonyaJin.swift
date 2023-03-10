//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
import SwiftUI


public struct SonyaJin: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView()
                DescriptionView()
            }
        }
        .navigationTitle("Sonya")
    }
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct SonyaJin_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SonyaJin(navigationPath: .constant(NavigationPath()))
        }
    }
}
