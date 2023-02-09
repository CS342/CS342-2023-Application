//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct FamView: View {
    public var body: some View {
        fam
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .shadow(radius: 10)
            .padding(50.0)
    }
    
    
    private var fam: Image {
        guard let imagePath = Bundle.module.path(forResource: "family", ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct FamView_Previews: PreviewProvider {
    static var previews: some View {
        FamView()
    }
}
