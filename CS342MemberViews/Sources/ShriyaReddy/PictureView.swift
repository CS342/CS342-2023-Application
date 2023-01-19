//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct PictureView: View {
    var body: some View {
        profileImage
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .clipShape(Circle().scale(0.7))
            .overlay(Circle().scale(0.7)
                .stroke(Color.purple, lineWidth: 5))
            .shadow(radius: 7)
    }
    
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "ShriyaReddy", ofType: "jpg"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
