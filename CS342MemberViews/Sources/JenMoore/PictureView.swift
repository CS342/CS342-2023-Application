//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct PictureView: View {
    @State private var detail: String? = nil
    private var imageNames = ["NewYork", "Riggy",  "Stanford"]
    private var imageDetails = [
        "NewYork": "Me and my friends in NY this summer!",
        "Riggy": "The cutest dog ever, Riggins!",
        "Stanford": "My brother and I at Stanford!"]
        
    var body: some View {
        VStack (spacing: 6) {
            Text("My Gallery")
                .font(.custom(
                    "Baskerville-SemiBoldItalic",
                    fixedSize: 18))
                .foregroundColor(.pink)
                .multilineTextAlignment(.center)
            ZStack {
                photoGrid
                    .opacity(detail == nil ? 1 : 0)
                detailView
            }
            .animation(.default, value: detail)
        }
    }
    
    @ViewBuilder
    var detailView: some View {
        if let name = detail {
            VStack() {
                createImage(titl: name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture {
                        detail = nil
                    }
                Text(imageDetails[name] ?? "")
                    .font(.custom(
                        "Baskerville-SemiBoldItalic",
                        fixedSize: 24))
                    .foregroundColor(.pink)
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    private var photoGrid: some View {
        ScrollView {
            LazyVGrid(columns: [.init(.adaptive(minimum: 100, maximum: .infinity), spacing: 3)]) {
                ForEach(self.imageNames, id: \.self) { name in
                    createImage(titl: name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .clipped()
                        .aspectRatio(1, contentMode: .fit)
                        .onTapGesture {
                            detail = name
                        }
                }
            }
        }
    }
    
    private func createImage(titl: String) -> Image {
        guard let imagePath = Bundle.module.path(forResource: titl, ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
