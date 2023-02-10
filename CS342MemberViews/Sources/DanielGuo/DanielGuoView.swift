//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct DanielGuo: View {
    @Binding var navigationPath: NavigationPath
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "DanGuo"))
                DescriptionView(
                    name: "Daniel Guo",
                    title: "Sophomore Studying CS + BioE",
                    description: Bundle.module.markdown(fromFileNamed: "DanGuoBio")
                )
                InstagramView()
                    .padding()
                Text("Hometown: Vancouver, Canada")
                    .bold()
                    .foregroundColor(.indigo)
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
            }
        }
            .navigationTitle("Daniel Guo")
    }
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct DanielGuo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DanielGuo(navigationPath: .constant(NavigationPath()))
        }
    }
}
