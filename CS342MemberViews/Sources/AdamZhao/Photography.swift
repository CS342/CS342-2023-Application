//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
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
