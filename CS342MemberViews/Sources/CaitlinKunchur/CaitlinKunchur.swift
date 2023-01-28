//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//


import InstructorViews
import SwiftUI


/// View displaying information about Caitlin Kunchur
public struct CaitlinKunchur: View {
    @Binding var navigationPath: NavigationPath
   
    
    public var body: some View {
        ZStack {
            Color(hue: 0, saturation: 0, brightness: 0).ignoresSafeArea()
            ScrollView(.vertical) {
                VStack(spacing: 7) {
                    ProfileRow()
                    ReadsRow().offset(y: -150)
                    ListensRow().offset(y: -150)
                    HobbiesRow().offset(y: -150)
                    Text("\"Dream big and dare to fail.\"").offset(y: -80).font(.custom(
                        "Georgia-Italic",
                        fixedSize: 25)).foregroundColor(.white)
                    Bundle.module.image(fromFileNamed: "network-compressed")
                        .resizable()
                        .ignoresSafeArea(edges: .bottom)
                        .frame(height: 100)
                }
            }
        }
    }
    
    
    /// - Parameter navigationPath: The navigation path used for navigation in the application.
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct CaitlinKunchur_Previews: PreviewProvider {
    @State private static var navigationPath = NavigationPath()
    
    
    static var previews: some View {
        NavigationStack {
            CaitlinKunchur(navigationPath: $navigationPath)
        }
    }
}
