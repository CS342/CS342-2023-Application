//
//  File.swift
//  
//
//  Created by Jeongwoo Park on 2023/01/24.
//

import SwiftUI


struct DescriptionView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Brian Park")
                .font(.title2.bold())
            Text("Hi! 👋")
                .font(.title3)
            Text(description)
                .font(.title3)
                .frame(width: 350)
        }
    }
    
    
    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "BrianParkBio", ofType: "md"),
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
