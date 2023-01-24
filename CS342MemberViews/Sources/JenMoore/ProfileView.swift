//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct ProfileView: View {
    @Binding var accentColor: Color
    
    public var body: some View {
        profileImage
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .clipShape(Circle())
            .shadow(color: accentColor, radius: 20)
            .padding(.horizontal, 32)
            .frame(maxWidth: 300)
    }
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "JenMoore", ofType: "jpg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        return Image(uiImage: image)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let accentColor = Color(red: 191 / 255, green: 127 / 255, blue: 110 / 255)
        ProfileView(accentColor: .constant(accentColor))
    }
}
