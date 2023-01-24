//
//  SwiftUIView.swift
//  
//
//  Created by Sherry X. on 1/21/23.
//

import SwiftUI

struct SherryPageView: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 20) {
            SherryView(profileImage: Bundle.module.image(fromFileNamed: page.imageUrl))
            
            Text(page.name)
                .font(.title)
            
            Text(page.description)
                .font(.subheadline)
                .frame(width: 300)
        }
    }
}

struct SherryPageView_Previews: PreviewProvider {
    static var previews: some View {
        SherryPageView(page: Page.samplePage)
    }
}
