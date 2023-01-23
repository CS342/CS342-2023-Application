//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct DescriptionView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Rhea Malhotra")
                .font(.title2.bold())
            Text("Undergraduate in Computer Science")
                .font(.title3)
                .padding()
            Text("Hometown: Allentown, PA")
            Text("Grade: Sophomore")
        }
    }
}
struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
