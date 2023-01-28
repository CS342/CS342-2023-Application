//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import StudentViews
import SwiftUI


public struct AudreyLin: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ZStack {
            Color("Millbrook Brown (dark)").edgesIgnoringSafeArea(.all)
            ScrollView(.vertical) {
                VStack(spacing: 30) {
                    DescriptionView(name: "Audrey Lin", title: "Class of 2025")
                    ProfileView(profileImage: Bundle.module.image(fromFileNamed: "AudreyLinImage"))
                    RowListView()
                    .frame(maxHeight: 500) // you have to give it a fixed size
                }
            }
        }
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AudreyLin_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AudreyLin(navigationPath: .constant(NavigationPath()))
        }
    }
}
