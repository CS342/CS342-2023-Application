//
//  SwiftUIView.swift
//  
//
//  Created by Paul Shmiedmayer on 1/12/23.
//

import SwiftUI

struct TwitterUsername: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let twitterURL {
            Button {
                openURL(twitterURL)
            } label: {
                Text("@PSchmiedmayer")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
    
    
    private var twitterURL: URL? {
        URL(string: "https://twitter.com/@PSchmiedmayer")
    }
}

struct TwitterUsername_Previews: PreviewProvider {
    static var previews: some View {
        TwitterUsername()
    }
}
