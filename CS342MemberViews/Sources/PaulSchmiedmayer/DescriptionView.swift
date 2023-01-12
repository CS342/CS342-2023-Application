//
//  SwiftUIView.swift
//  
//
//  Created by Paul Shmiedmayer on 1/12/23.
//

import SwiftUI

struct DescriptionView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Paul Schmiedmayer, Ph.D.")
                .font(.title2.bold())
            Text("Postdoctoral Researcher")
                .font(.title3)
            Text(description)
                .padding()
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "PaulSchmiedmayerBio", ofType: "md"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return description
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
