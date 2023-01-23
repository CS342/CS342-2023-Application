//
//  File.swift
//  
//
//  Created by Adam Zhao on 1/23/23.
//

import SwiftUI
import UIKit


struct Photography: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text(description)
                Photos()
                    .offset(y: -150)
                    .ignoresSafeArea()
            }
                .padding()
        }
            .navigationTitle("Photography")
        }
    }


private var description: String {
    guard let descriptionPath = Bundle.module.path(forResource: "PhotoBio", ofType: "md"),
          let description = try? String(contentsOfFile: descriptionPath) else {
        return ""
    }
    
    return description
}


struct PhotographyPreview: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Photography()
        }
    }
}
