//
//  HeadShot.swift
//  AdamZhao
//
//  Created by Adam Zhao on 1/19/23.
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
