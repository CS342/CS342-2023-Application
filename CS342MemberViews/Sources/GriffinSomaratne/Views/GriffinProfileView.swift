//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct GriffinProfileView: View {
    private let profileImage: Image
    
    
    public var body: some View {
        profileImage
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .clipShape(Circle())
            .padding(.horizontal, 32)
            .frame(maxWidth: 272)
            .shadow(radius: 10)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
    }
    
    
    public init(profileImage: Image) {
        self.profileImage = profileImage
    }
}


struct GriffinProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GriffinProfileView(profileImage: Image(systemName: "person.fill"))
    }
}
