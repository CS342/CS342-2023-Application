//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
import SwiftUI


struct HobbiesView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 30) {
                Text("- I am the alto saxophonist for the Stanford Saxophone Quartet, and we host quarterly recitals and performances on campus.")
                saxophoneImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                Text("- I also enjoy playing volleyball! Currently I play on the Stanford Club Men's Volleyball Team as an outside hitter.")
                volleyballImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                Text("- A more minor hobby of mine is video editing! I use Adobe Premiere for small personal projects here and there.")
                premiereImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 150)
            }
            .padding(20)
        }
            .navigationTitle("My Hobbies!")
    }
    
    
    private var saxophoneImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "Saxophone", ofType: "jpg"),
            let image = UIImage(contentsOfFile: imagePath) else {
                return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
    
    
    private var volleyballImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "Volleyball", ofType: "png"),
            let image = UIImage(contentsOfFile: imagePath) else {
                return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
    
    
    private var premiereImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "Premiere", ofType: "png"),
            let image = UIImage(contentsOfFile: imagePath) else {
                return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct HobbiesView_Previews: PreviewProvider {
    static var previews: some View {
        HobbiesView()
    }
}
