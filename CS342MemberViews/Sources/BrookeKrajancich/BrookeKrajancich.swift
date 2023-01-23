//
//  SwiftUIView.swift
//  
//
//  Created by Brooke Krajancich on 1/19/23.
//

import SwiftUI


public struct BrookeKrajancich: View {
    @Binding var navigationPath: NavigationPath
    
    private var profileImage: Image {
        guard let imagePath = Bundle.module.path(forResource: "BrookeKrajancich", ofType: "png"),
           let image = UIImage(contentsOfFile: imagePath) else {
            return Image(systemName: "person.fill")
        }
        
        return Image(uiImage: image)
    }
    
    public var body: some View {
        ScrollView(.vertical) {
            Text("hello world")
            profileImage
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding(.horizontal, 32)
                .frame(maxWidth: 300)
        }
        .navigationTitle("Brooke")
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct BrookeKrajancich_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BrookeKrajancich(navigationPath: .constant(NavigationPath()))
        }
    }
}
