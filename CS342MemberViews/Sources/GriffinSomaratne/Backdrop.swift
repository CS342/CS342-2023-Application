//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


/// Displays backdrop image
public struct Backdrop: View {
    private let backdropImage: Image
    
    
    public var body: some View {
        backdropImage
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(alignment: .topLeading)
    }
    
    
    /// - Parameter backdropImage: The backdrop image that should be displayed.
    public init(backdropImage: Image) {
        self.backdropImage = backdropImage
    }
}


struct Backdrop_Previews: PreviewProvider {
    static var previews: some View {
        Backdrop(backdropImage: Image(systemName: "person.fill"))
    }
}
