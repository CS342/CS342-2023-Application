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
            //.aspectRatio(1.0, contentMode: .fit)
            .aspectRatio(contentMode: .fit)
            //.clipShape(Circle())
            //.shadow(radius: 10)
            .padding(.horizontal, 32)
            .frame(maxWidth: 300)
        /*
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 240, alignment: .topLeading)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
            .overlay{
                RoundedRectangle(cornerRadius:10, style: .circular).stroke(.gray, lineWidth: 4)
         
            }*/
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
