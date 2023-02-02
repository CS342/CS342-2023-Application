//
//  SwiftUIView.swift
//  
//
//  Created by Julia Rhee on 2/1/23.
//

import SwiftUI

struct LinkedInView: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("Check out my professional profile!")
                    .frame(maxWidth: .infinity, idealHeight: 40)
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            .padding()
        }
    }
    
    
    private var linkedinURL: URL? {
        URL(string: "https://www.linkedin.com/in/julia-rhee")
    }
}


struct Linkedin_Previews: PreviewProvider {
     static var previews: some View {
        LinkedInView()
    }
}
