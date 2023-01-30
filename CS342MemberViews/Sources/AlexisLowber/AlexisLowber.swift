//
//  SwiftUIView.swift
//  
//
//  Created by Alexis Lowber on 1/24/23.
//

import InstructorViews
import SwiftUI


public struct AlexisLowber: View {
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
    
    
    public init() { }
}


struct AlexisLowber_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AlexisLowber()
        }
    }
}
