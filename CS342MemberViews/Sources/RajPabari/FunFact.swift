//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

public struct FunFact: View {
    
    @State private var randomInt = 0
    
    @State var facts = ["","Fun Fact 1: Raj has given a TEDx Talk on The Renaissance of Capitalism",
                        "Fun Fact 2: Raj finished a marathon in 4 hours",
                        "Fun Fact 3: Raj founded Off Grid Technologies, Inc. where he created portable hydroelectric generators to charge mobile devices",
                        "Fun Fact 4: Raj has a blog at his website rajpabari.com",
                        "Fun Fact 5: Raj built a collaborative robot that autonomously made grilled cheese sandwiches",
                        "Fun Fact 6: Raj taught a 5-month course on entrepreneurship to 75 students",
                        "Fun Fact 7: Raj will be a software engineer at Amazon in Seattle this summer",
                        "Fun Fact 8: Raj was a guest lecturer at UCSD for a business course",
                        "Fun Fact 9: Raj was recognized by the CA Governor for his spirit of service",
                        "Fun Fact 10: Raj was nominated for San Diego's Top Tech Awards",]

    public var body: some View {
        VStack(spacing: 8) {
            Text(facts[randomInt])
        }
        Button {
             randomInt = Int.random(in: 1..<11)

        } label: {
            Text("Learn a random fun fact about Raj")
                .frame(maxWidth: .infinity, idealHeight: 32)
        }
            .buttonStyle(.borderedProminent)
            .padding()
        

    }
}


struct FunFact_Previews: PreviewProvider {
    static var previews: some View {
        FunFact()
    }
}

