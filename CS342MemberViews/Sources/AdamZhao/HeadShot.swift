//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct HeadShot: View {
    var body: some View {
        headShot
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.horizontal, 32)
            .frame(maxWidth: 300)
    }
    
    private var headShot: Image {
        guard let imagePath = Bundle.module.path(forResource: "Headshot_Real", ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}

struct HeadShot_Previews: PreviewProvider {
    static var previews: some View {
        HeadShot()
    }
}
