//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
import SwiftUI


public struct AndyWang: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                DescriptionView()
            }
            .padding(20)
        }
            .navigationTitle("Andy")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AndyWang_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AndyWang(navigationPath: .constant(NavigationPath()))
        }
    }
}
