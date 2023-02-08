//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        VStack {
            Text("Emmy")
                .font(.custom("Inter", size: 110))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
            Text("THAMAKAISON")
                .font(.custom("Inter", size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                .offset(y: -10)
        }
        .offset(y: -150)
    }
}

struct ProfileView: View {
    var body: some View {
        profileImage
            .overlay(ImageOverlay())
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "EmmyThamakaison", ofType: "png"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
