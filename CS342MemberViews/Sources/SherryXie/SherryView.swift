//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


/// Displays a profile image in a circular view using a shaddow.
public struct SherryView: View {
    private let profileImage: Image
    
    
    public var body: some View {
        profileImage
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: 10)
            .padding(.horizontal, 32)
            .frame(maxWidth: 300)
    }
    
    
    /// - Parameter profileImage: The profile image that should be displayed.
    public init(profileImage: Image) {
        self.profileImage = profileImage
    }
}


struct SherryView_Previews: PreviewProvider {
    static var previews: some View {
        SherryView(profileImage: Image(systemName: "person.fill"))
    }
}
