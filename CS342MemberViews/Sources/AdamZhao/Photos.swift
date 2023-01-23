//
//  File.swift
//  
//
//  Created by Adam Zhao on 1/23/23.
//

import SwiftUI

struct Photos: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                stanford5
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                sunset1
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                sunset2
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                stanford1
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                stanford2
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                stanford3
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
                stanford4
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 600)
            }
            .padding()
        }
    }
}


private var stanford5: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford5", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var sunset1: Image {
    guard let imagePath = Bundle.module.path(forResource: "Sunset1", ofType: "JPG"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var sunset2: Image {
    guard let imagePath = Bundle.module.path(forResource: "Sunset2", ofType: "JPG"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var stanford1: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford1", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}
private var stanford2: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford2", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var stanford3: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford3", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

private var stanford4: Image {
    guard let imagePath = Bundle.module.path(forResource: "Stanford4", ofType: "HEIC"),
       let image = UIImage(contentsOfFile: imagePath) else {
        return Image(systemName: "person.fill")
    }
    
    return Image(uiImage: image)
}

struct SunsetPreviews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
