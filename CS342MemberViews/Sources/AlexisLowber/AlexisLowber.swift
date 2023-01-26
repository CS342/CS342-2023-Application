//
//  SwiftUIView.swift
//  
//
//  Created by Alexis Lowber on 1/24/23.
//

import SwiftUI
import InstructorViews

public struct AlexisLowber: View {
    
    @Binding var navigationPath: NavigationPath
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "AlexisLowber"))
                DescriptionView(
                    name: "Alexis Lowber",
                    title: "Biocomputation, MS",
                    description: Bundle.module.markdown(fromFileNamed: "AlexisLowberBio")
                )
            }
        }
        .navigationTitle("Alexis")
    }
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}

struct AlexisLowber_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AlexisLowber(navigationPath: .constant(NavigationPath()))
        }
    }
}
