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
                Text("- I have been playing saxophone for 8 years! At Stanford, I am the alto saxophonist for the Stanford Saxophone Quartet, and we host quarterly recitals and performances on campus.")
                saxophoneImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                Text("- I also enjoy playing volleyball! It is definitely the most fun sport out there, and there are so many variations to the game: beach, indoors, grass, doubles, etc. Currently I play on the Stanford Club Men's Volleyball Team as an outside hitter, and we compete against other collegiate club teams in the bay area.")
                volleyballImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 300)
                Text("- A more minor hobby of mine is video and audio editing! I use Adobe Premiere for video and Audacity for audio. My knowledge of both are pretty rudimentary, and I mainly use these software for small personal projects here and there.")
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
