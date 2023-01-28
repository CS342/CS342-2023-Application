//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct JapanView: View {
    public var body: some View {
        VStack {
            profileImage1
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .shadow(radius: 10)
                .padding(.horizontal, 100)
            profileImage2
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .shadow(radius: 10)
                .padding(.horizontal, 100)
        }
    }
    
    
    private var profileImage1: Image {
        guard let imagePath = Bundle.module.path(forResource: "image1", ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
    private var profileImage2: Image {
        guard let imagePath = Bundle.module.path(forResource: "image2", ofType: "jpeg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct JapanView_Previews: PreviewProvider {
    static var previews: some View {
        JapanView()
    }
}
