//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI

/// View displaying information about Abhinav Agarwal
public struct AbhinavAgarwal: View {
    private let timer = Timer.publish(every: 1.5, on: .main, in: .common).autoconnect()
    @State var animationTick = true
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "AbhinavAgarwal"))
                    .overlay {
                        Circle()
                            .trim(from: animationTick ? 0 : 1, to: 1)
                            .stroke(.red, lineWidth: 10)
                    }
                    .onReceive(timer) { _ in
                        withAnimation(.linear(duration: 1)) {
                            animationTick.toggle()
                        }
                    }
                DescriptionView(
                    name: "Abhinav Agarwal",
                    title: "Pediatric Apple Watch Study",
                    description: Bundle.module.markdown(fromFileNamed: "AbhinavAgarwalBio")
                )
                LinkedInUsername()
            }
        }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Abhinav")
                        .font(.title.bold())
                        .accessibilityAddTraits(.isHeader)
                }
            }
    }
    
    
    /// - Parameter navigationPath: The navigation path used for navigation in the application.
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct AbhinavAgarwal_Previews: PreviewProvider {
    @State private static var navigationPath = NavigationPath()
    
    
    static var previews: some View {
        NavigationStack {
            AbhinavAgarwal(navigationPath: $navigationPath)
        }
    }
}
