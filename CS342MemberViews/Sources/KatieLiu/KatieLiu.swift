//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
// Citations: Open Website in Safari by Sean Allen,
//            Tanaschita, Customizing Appearance of Navigation View
//

import InstructorViews
import SwiftUI


public struct KatieLiu: View {
    @Binding var navigationPath: NavigationPath
    
    /*var platforms: [Platform] = [.init(name: "Hello", imageName: "KatieLiu.jpeg", color: .systemGreen) ]*/
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 30) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "KatieLiu"))
                DescriptionView(
                    name: "Katie Liu",
                    title: "B.S. Computer Science and Music",
                    description: Bundle.module.markdown(fromFileNamed: "KatieLiuBio")
                )
                Button {
                    navigationPath.append(KatieLiuDests.moreinfo)
                } label: {
                    Text("More About Me")
                        .bold()
                        .frame(width: 280, height: 50)
                        .foregroundColor(.white)
                        .buttonStyle(.bordered)
                        .background(
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color(.systemGreen), Color(.systemBrown), Color(.systemOrange)]
                                ),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                        .cornerRadius(12)
                }
            }
            .navigationDestination(for: KatieLiuDests.self) { destination in
                switch destination {
                case .moreinfo:
                    KatieLiuView()
                }
            }
            .navigationTitle("Katie")
            .toolbarBackground(Color.green.opacity(0.1), for: .navigationBar)
        }
    }

    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct KatieLiu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            KatieLiu(navigationPath: .constant(NavigationPath()))
        }
    }
}
