//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


/// Displays project  image
public struct ProjectImage: View {
    private let heroImage: Image
    private let title: String
    private let category: String
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            heroImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            Text(title)
                .font(.title3)
            Text(category)
        }
    }
    
    
    /// - Parameter backdropImage: The backdrop image that should be displayed.
    public init(heroImage: Image, title: String, category: String) {
        self.heroImage = heroImage
        self.title = title
        self.category = category

    }
}


struct ProjectImage_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ProjectImage(
                heroImage: Image(systemName: "person.fill"),
                title: String("Project Name"),
                category: String("category")
            )
        }
    }
}
