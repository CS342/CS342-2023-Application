//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
// Button with custom icons -- intended to link
// to social media profiles
//
//  Created by Jennifer Xu on 1/22/23.
//

import SwiftUI


struct SocialButton: View {
    @Environment(\.openURL) var openURL
    var social: String? = "person"
    var url: String
    
    
    var body: some View {
        if let socURL {
            Button {
                openURL(socURL)
            } label: {
                iconImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 32)
            }
                .padding()
        }
    }
    
    
    private var socURL: URL? {
        URL(string: url)
    }
    
    private var iconImage: Image {
        guard let imagePath = Bundle.module.path(forResource: social, ofType: "png"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.circle.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct SocialButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialButton(url: "https://jennxu.netlify.app/")
    }
}
