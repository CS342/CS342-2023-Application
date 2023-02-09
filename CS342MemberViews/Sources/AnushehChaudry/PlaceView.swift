//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct PlaceView: View {
    public var body: some View {
        place
            .resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .shadow(radius: 10)
            .padding(50.0)
    }
    
    
    private var place: Image {
        guard let imagePath = Bundle.module.path(forResource: "place", ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView()
    }
}
