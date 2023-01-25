//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


/// View displaying information about Oliver Aalami
public struct OliverAalami: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "OliverAalami"))
                DescriptionView(
                    name: "Prof. Oliver Aalami, MD",
                    title: "Director of Stanford’s Biodesign for Digital Health",
                    description: Bundle.module.markdown(fromFileNamed: "OliverAalamiBio")
                )
                Button {
                    navigationPath.append(OliverDetailDestinations.biodesignOffice)
                } label: {
                    Text("Office Location")
                        .frame(maxWidth: .infinity, idealHeight: 32)
                }
                    .buttonStyle(.borderedProminent)
                    .padding()
                    .padding(.top, -48)
            }
        }
            .navigationDestination(for: OliverDetailDestinations.self) { destination in
                switch destination {
                case .biodesignOffice:
                    BiodesignOfficeView()
                }
            }
            .navigationTitle("Oliver")
    }
    
    
    /// - Parameter navigationPath: The navigation path used for navigation in the application.
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct OliverAalami_Previews: PreviewProvider {
    @State private static var navigationPath = NavigationPath()
    
    
    static var previews: some View {
        NavigationStack {
            OliverAalami(navigationPath: $navigationPath)
        }
    }
}
