//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct WikiGame: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let wikiURL {
            VStack(spacing: 5) {
                Text("Keep scrolling for a little game...")
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 160, height: 120)
                    .background(Rectangle().fill(Color.white).shadow(radius: 2))
                Text("A random fact about Hamed is that he wants to visit Easter Island some day to see the moai (🗿) statues in person!")
                    .padding()
                Text("You may be familiar with the Wikipedia game, but if you're not, here's how it works.")
                    .padding()
                Text("You start on one URL and have to navigate from that Wikipedia page to a target page")
                    .padding()
                Text("You can only use the embedded links in each article.")
                    .padding()
                Text("If you're feeling particularly bored, start below for the Wiki page of the place we're at right now.")
                    .padding()
                Text("See if you can get to the Wiki page for my bucket list destination of Easter Island.")
                    .padding()
                Text("His personal best is in 4 clicks... good luck!")
                    .padding()
            }
            Button {
                openURL(wikiURL)
            } label: {
                Text("Begin your Wikipedia Game journey here!")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
            VStack(spacing: 8) {
                Text("If you enjoyed the Wikipedia Game, you can play more at www.thewikigame.com. Have a wonderful day! :)")
                    .padding()
            }
        }
    }
    
    
    private var wikiURL: URL? {
        URL(string: "https://en.wikipedia.org/wiki/Stanford_University")
    }
}


struct AdditionalFeature_Previews: PreviewProvider {
    static var previews: some View {
        WikiGame()
    }
}
