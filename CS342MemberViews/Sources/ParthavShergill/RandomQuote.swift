//
// This source file is part of the CS342 2023 Application project. The structure was inspired by Raj Pabari's random fun fact generator.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct RandomQuote: View {
    @State private var randomInt = 0
    
    let quotes = [
    "",
    "",
    "",
//    "Don't ever, for any reason, do anything to anyone, for any reason, no matter what, no matter where, or who you are with, or or where you are going, or where you've been, ever, for any reason, whatsoever. - Michael Scott",
//    "A common mistake people make when trying to design something completely foolproof is to underestimate the ingenuity of complete fools. - Douglas Adams",
//    "Happiness is only real when shared. - Jon Krakauer",
//    "You've sacrificed your entire life to be who you are today. Was it worth it? - Richard Bach",
//    "Until I feared I would lose it, I never loved to read. One does not love breathing. - Harper Lee",
//    "Don't worry that you aren't giving people what they want. Give them who you are, and let that be enough. - Brandon Sanderson",
//    "The fear of failure is worse than the failure itself. - Paulo Coelho",
//    "The most important step a man can take. It’s not the first one, is it? It’s the next one. - Brandon Sanderson",
//    "Don't tell me the moon is shining; show me the glint of light on broken glass. - Anton Chekhov"
    ]

    var body: some View {
        VStack(spacing: 8) {
            Text(quotes[randomInt])
                .padding()
        }
        Button {
            randomInt = Int.random(in: 1..<quotes.count)
        } label: {
            Text("Click for a random quote:")
                .frame(maxWidth: .infinity, idealHeight: 32)
        }
            .buttonStyle(.borderedProminent)
            .padding()
    }
}


struct RandomQuote_Previews: PreviewProvider {
    static var previews: some View {
        RandomQuote()
    }
}
