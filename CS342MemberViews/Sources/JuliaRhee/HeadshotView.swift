//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct HeadshotView: View {
    var body: some View {
        profileImage
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(Circle().scale(0.8))
            .overlay(Circle().scale(0.85)
                .stroke(Color.blue, lineWidth: 20))
            .shadow(radius: 7)
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "JuliaRheeHeadshot", ofType: "jpg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fit")
        }
        
        return Image(uiImage: image)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HeadshotView()
    }
}
