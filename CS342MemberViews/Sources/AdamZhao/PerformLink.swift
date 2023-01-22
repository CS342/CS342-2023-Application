//
//  PerformLink.swift
//  AdamZhao
//
//  Created by Adam Zhao on 1/19/23.
//

import SwiftUI


struct PerformLink: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        if let performUrl {
            Button {
                openURL(performUrl)
            } label: {
                Text("Click for a short performance")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
    
    
    private var performUrl: URL? {
        URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    }
}


struct TwitterUsername_Previews: PreviewProvider {
    static var previews: some View {
        PerformLink()
    }
}
