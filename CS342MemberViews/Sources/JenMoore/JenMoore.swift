//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct JenMoore: View {
    let accentColor = Color(red: 134 / 255, green: 89 / 255, blue: 77 / 255)

    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 32) {
                ProfileView(accentColor: accentColor)
                DescriptionView().padding(.bottom, -18)
                InterestsView(accentColor: accentColor)
                GalleryView(accentColor: accentColor).frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }.background(
            profileImage?
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
        )
        .navigationTitle("Jen")
    }
    
    private var profileImage: Image? {
        guard let imagePath = Bundle.module.path(forResource: "Background", ofType: "jpg"),
              let image = UIImage(contentsOfFile: imagePath) else {
            return nil
        }
        return Image(uiImage: image)
    }
    
    public init() { }
}


struct JenMoore_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            JenMoore()
        }
    }
}
