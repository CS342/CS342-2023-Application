//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import SwiftUI

struct PhotosView: View {
    @State private var showDetail = false
    
    
    var body: some View {
        ZStack {
            Color("Gray").edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    Bundle.module.image(fromFileNamed: "IMG_6406")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_6391")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_6356")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_6320")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_6269")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_6205")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_6099")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_5879")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_5871")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    Bundle.module.image(fromFileNamed: "IMG_5401")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                }
                    .padding(.vertical)
            }
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
