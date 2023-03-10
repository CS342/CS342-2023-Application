// swift-tools-version: 5.7

//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct ProfilePanel: View {
    let highlightColor = Color(red: 0.96, green: 0.45, blue: 0.71)
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "BrookeKrajancich", ofType: "png"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }

        return Image(uiImage: image)
    }
    
    private var backgroundImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "Background", ofType: "jpg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
    
    var body: some View {
        ZStack {
            backgroundImage
                .ignoresSafeArea()
                .frame(height: 400)
            VStack {
                profileImage
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(maxWidth: 200)
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                Spacer()
                    .frame(height: 20)
                Text("Brooke Krajancich")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(highlightColor)
                Text("PhD Student in EE")
                    .font(.headline)
                    .fontWeight(.medium)
                Spacer()
                AboutMe()
                Spacer()
                WebsiteLink()
            }
        }
    }
}

struct ProfilePanel_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePanel()
    }
}
