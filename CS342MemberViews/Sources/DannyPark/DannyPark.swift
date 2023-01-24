//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


public struct DannyPark: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                MapView()
                    .frame(height: 300)
                    .offset(y:-50)
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "DannyPark"))
                    .offset(y:-240)
                DescriptionView(
                    name: "Danny Park",
                    title: "Undergraduate Student",
                    description: Bundle.module.markdown(fromFileNamed: "DannyParkBio")
                )
                .offset(y:-260)
                
                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }
                LinkedIn()
                    .offset(y: -450)
                WCA()
                    .offset(y: -500)
            }
        }
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct DannyPark_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DannyPark(navigationPath: .constant(NavigationPath()))
        }
    }
}
