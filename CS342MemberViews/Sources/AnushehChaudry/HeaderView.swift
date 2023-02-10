//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Anusheh Chaudry")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .shadow(radius: 20)
                .padding(.top, 20)
            Text("Undergraduate Student")
                .font(.title3)
                .fontWeight(.thin)
                .foregroundColor(Color.blue)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
