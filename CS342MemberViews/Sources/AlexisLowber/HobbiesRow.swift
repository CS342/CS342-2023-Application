//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI
import UIKit


func getHobbies() -> [Hobby] {
    return [
        Hobby(emojiStr: "🎤", description: "singing"),
        Hobby(emojiStr: "🥘", description: "cooking"),
        Hobby(emojiStr: "👟", description: "running"),
        Hobby(emojiStr: "🐶", description: "playing with my dog"),
        Hobby(emojiStr: "💃🏾", description: "dancing"),
        Hobby(emojiStr: "📖", description: "reading"),
        Hobby(emojiStr: "🎧", description: "listening to music/podcasts")
    ]
}

struct HobbiesRow: View {
    var hobbies = getHobbies()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Hobbies")
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(hobbies, id: \.description) { hobby in
                        HobbyView(hobby: hobby)
                    }
                }
            }
            .frame(height: 150)
        }
        
    }
}

struct HobbiesRow_Previews: PreviewProvider {
    static var previews: some View {
        HobbiesRow(
            hobbies: Array(getHobbies().prefix(through: 6))
        )
    }
}
