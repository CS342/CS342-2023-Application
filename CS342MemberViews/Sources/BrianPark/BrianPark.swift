//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI
import MapKit


public struct BrianPark: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView()
//                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "BrianPark"))
                DescriptionView()
                Text("Most recently from:")
                    .font(.title3)
                    .padding()
                MapView()
                    .frame(height: 300)
                    .offset(y:-50)
                Text("Some of my socials:")
                    .font(.title3)
                HStack(spacing: 30) {
                    LinkedIn()
                    Instagram()
                    Github()
                }
            
            }
        }
            .navigationTitle("Brian")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct BrianPark_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BrianPark(navigationPath: .constant(NavigationPath()))
        }
    }
}
