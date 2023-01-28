//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import SwiftUI

struct ImageOptions: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct PhotosView: View {
    @State private var showDetail = false

    var body: some View {
        ZStack {
            Color("Gray").edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(imageArray, id: \.self) { image in
                        Bundle.module.image(fromFileNamed: image)
                            .resizable()
                            .modifier(ImageOptions())
                    }
                }
                    .padding(.vertical)
            }
        }
    }
    
    let imageArray = [
        "IMG_6406",
        "IMG_6391",
        "IMG_6356",
        "IMG_6320",
        "IMG_6269",
        "IMG_6205",
        "IMG_6099",
        "IMG_5879",
        "IMG_5871",
        "IMG_5401"
    ]
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
