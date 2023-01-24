//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
// Profile Picture View. Modeled off of Paul Schmiedmayer's ProfileView. Original image.
// 
// Created by Jennifer Xu on 1/22/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        profileImage
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: 10)
            .padding(.horizontal, 32)
            .frame(maxWidth: 300)
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "Xu_profpic", ofType: "jpg"),
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
