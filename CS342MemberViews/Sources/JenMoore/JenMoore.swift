//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct JenMoore: View {
    @Binding var navigationPath: NavigationPath
    @State var accentColor = Color(red: 134 / 255, green: 89 / 255, blue: 77 / 255)

    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 32) {
                Spacer(minLength: 1.0)
                ProfileView(accentColor: $accentColor)
                DescriptionView().padding(.bottom, -18)
                InterestsView(accentColor: $accentColor)
                GalleryView(accentColor: $accentColor, showModal: false).frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }.background(
            profileImage?
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
        )
    }
    
    private var profileImage: Image? {
        guard let imagePath = Bundle.module.path(forResource: "Background", ofType: "jpg"),
              let image = UIImage(contentsOfFile: imagePath) else {
            return nil
        }
        return Image(uiImage: image)
    }
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct JenMoore_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            JenMoore(navigationPath: .constant(NavigationPath()))
        }
    }
}
