//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

public struct GalleryView: View {
    @Binding var accentColor: Color
    @State private var detail: String?
    @State var showModal = false
    
    private let imageNames = ["NewYork", "Riggy", "Stanford"]
    private let imageDetails = [
        "NewYork": "Me and my friends in NY this summer!",
        "Riggy": "The cutest dog ever, Riggins!",
        "Stanford": "Me and my brother at Stanford!"
    ]
        
    public var body: some View {
        VStack(spacing: 6) {
            Text("My Gallery")
                .font(.custom(
                    "Baskerville-BoldItalic",
                    fixedSize: 30
                ))
                .foregroundColor(accentColor)
                .multilineTextAlignment(.center)
            photoGrid
            .animation(.default, value: detail)
        }
        .sheet(isPresented: $showModal) {
                    detailView
        }
    }
    
    @ViewBuilder
    private var detailView: some View {
        if let name = detail {
            VStack {
                createImage(titl: name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture {
                        detail = nil
                        showModal = false
                    }
                Text(imageDetails[name] ?? "")
                    .font(.custom(
                        "Baskerville-SemiBoldItalic",
                        fixedSize: 24
                    ))
                    .foregroundColor(accentColor)
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
                            showModal = true
                        }
                }
            }
        }
    }
    
    private func createImage(titl: String) -> Image {
        guard let imagePath = Bundle.module.path(forResource: titl, ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath)
        else {
            return Image(systemName: "person.fill")
        }
        return Image(uiImage: image)
    }
}


struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let accentColor = Color(red: 191 / 255, green: 127 / 255, blue: 110 / 255)
        GalleryView(accentColor: .constant(accentColor), showModal: false)
    }
}
