//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct RaagView: View {
    public var body: some View {
        raagImage
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .clipShape(Circle())
            .shadow(radius: 10)
            .padding(.horizontal, 100)
    }
    
    
    private var raagImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "Raag", ofType: "jpg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct RaagView_Previews: PreviewProvider {
    static var previews: some View {
        RaagView()
    }
}
