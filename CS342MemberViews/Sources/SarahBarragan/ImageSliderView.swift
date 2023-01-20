//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct ImageSlider: View {
    private let images = ["beach", "city", "hike", "stadium"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { item in
                 Image(item)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
