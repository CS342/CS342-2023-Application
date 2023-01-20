//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct ProfileView: View {
    public var body: some View {
        profileImage
            .resizable()
            .aspectRatio(0.75, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 45, style: .continuous))
            .frame(width: 250, height: 350)
            .shadow(radius: 60)
            .padding(.horizontal, 100)
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "SarahBarragan", ofType: "jpeg"),
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
