//
//  SwiftUIView.swift
//  
//
//  Created by Brooke Krajancich on 1/22/23.
//

import SwiftUI

struct ProfilePanel: View {
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
    
    var backgroundColor = Color(red: 0.067, green: 0.094, blue: 0.153)
//    var highlightColor2: Color = Color(hue: 0.827, saturation: 0.669, brightness: 0.908)
    var highlightColor = Color(red: 0.96, green: 0.45, blue: 0.71)
    
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
