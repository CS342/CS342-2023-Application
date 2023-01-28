import SwiftUI
import UIKit

//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

struct Quiz: View {
    @State private var showQuiz = false
    var body: some View {
        NavigationView {
                    NavigationStack {
                        VStack {
                            NavigationLink(destination: AboutMeQuizView()) {
                                Text("Take Quiz")
                                    .frame(maxWidth: .infinity, idealHeight: 32)
                            }.buttonStyle(.borderedProminent)
                                .padding()
                        }
                    }
        }
        .padding(.top)
        .frame(height: 100.0)
    }
}

struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
