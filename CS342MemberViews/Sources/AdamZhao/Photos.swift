//
//  File.swift
//  
//
//  Created by Adam Zhao on 1/23/23.
//

import SwiftUI

struct Photos: View{
    var body: some View{
        ScrollView(.horizontal){
            HStack{
                Stanford5
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                Sunset1
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                Sunset2
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                Stanford1
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                Stanford2
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                Stanford3
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                Stanford4
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
            }
            .padding()
        }
        
    }
}


private var Stanford5: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford5", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var Sunset1: Image {
    guard let imagePath = Bundle.module.path(forResource: "Sunset1", ofType: "JPG"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var Sunset2: Image {
    guard let imagePath = Bundle.module.path(forResource: "Sunset2", ofType: "JPG"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var Stanford1: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford1", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}
private var Stanford2: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford2", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var Stanford3: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford3", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var Stanford4: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford4", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

struct Sunset_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
