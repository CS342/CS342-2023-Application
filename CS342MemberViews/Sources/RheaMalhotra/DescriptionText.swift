//

// This source file is part of the CS342 2023 Application project

//

// SPDX-FileCopyrightText: 2023 Stanford University

//

// SPDX-License-Identifier: MIT

//


import SwiftUI


struct DescriptionText: View {
    var body: some View {
        VStack {
            Text("Rhea is an undergraduate studying Math and Computer Science on the Computational Biology track.")

                .font(.system(size: 20, design: .rounded)).padding(
                    EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                )

            Text("Her interests include genomics, oncology, and the biotech startup space.")

                .font(.system(size: 20, design: .rounded)).padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
    }
}

struct DescriptionText_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionText()
    }
}
