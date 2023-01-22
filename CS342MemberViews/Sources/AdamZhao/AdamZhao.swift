//
//  ContentView.swift
//  AdamZhao
//
//  Created by Adam Zhao on 1/19/23.
//

import SwiftUI

public struct AdamZhao: View {
    @Binding var navigationPath: NavigationPath
    
    public var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 50) {
                HeadShot()
                DescriptionView()
                Text("Here is a short piece that I recorded for you all!")
                    .offset(y: -85)
                PerformLink()
                    .offset(y: -150)
            }
            .padding()
        }
        .navigationTitle("Adam")
    }
        
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}

struct AdamZhao_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AdamZhao(navigationPath: .constant(NavigationPath()))
        }
    }
}
