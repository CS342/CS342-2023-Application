//
//  Rachel Wu.swift
//  
//
//  Created by Rachel Wu on 1/23/23.
//

import InstructorViews
import SwiftUI


public struct RachelWu: View {
    @Binding var navigationPath: NavigationPath
    
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 42) {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "RachelWu"))
                DescriptionView(
                    name: "Rachel Wu",
                    title: "Undergraduate @ Stanford",
                    description: Bundle.module.markdown(fromFileNamed: "RachelWuBio")
                )
                TwitterUsername()
            }
        }
            .navigationTitle("Rachel")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct RachelWu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            RachelWu(navigationPath: .constant(NavigationPath()))
        }
    }
}
 
