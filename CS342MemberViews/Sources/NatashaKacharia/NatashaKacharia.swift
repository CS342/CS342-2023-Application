//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Citing the following websites: 
// https://developer.apple.com/documentation/swiftui/symbolvariants
// https://developer.apple.com/forums/thread/130800
import InstructorViews
import SwiftUI


/// View displaying information about Natasha Kacharia
public struct NatashaKacharia: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 50) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "NatashaKacharia"))
                DescriptionView(
                    name: "Natasha Kacharia",
                    title: "Pink Girl in a Pink World",
                    description: Bundle.module.markdown(fromFileNamed: "NatashaKachariaBio")
                )
                Test()
                }
            }
            .navigationTitle("Natasha")
            .background(Color.pink.opacity(0.07).edgesIgnoringSafeArea(.all))
    }
    
    
    /// - Parameter navigationPath: The navigation path used for navigation in the application.
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct NatashKacharia_Previews: PreviewProvider {
    @State private static var navigationPath = NavigationPath()
    
    
    static var previews: some View {
        NavigationStack {
            NatashaKacharia(navigationPath: $navigationPath)
        }
    }
}
