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
                PerformLink()
                    .offset(y: -125)
                Button {
                        navigationPath.append(AdamDestinations.Photography)
                    } label: {
                        Text("Photography")
                            .frame(maxWidth: .infinity, idealHeight: 32)
                        }
                            .buttonStyle(.borderedProminent)
                            .padding()
                            .offset(y: -200)
                    }
                .padding()
                }
                    .navigationDestination(for: AdamDestinations.self) { destination in
                        switch destination {
                        case .Photography:
                            Photography()
                        }
                    }
                .navigationTitle("Adam")
        }
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
    }





struct AdamZhao_Previews: PreviewProvider {
    @State private static var navigationPath = NavigationPath()
    
    //@State private static var navigationPath = NavigationPath()

    static var previews: some View {
        NavigationStack {
            AdamZhao(navigationPath: $navigationPath)
        }
    }
}

/*
 struct OliverAalami_Previews: PreviewProvider {
 @State private static var navigationPath = NavigationPath()
 
 
 static var previews: some View {
 NavigationStack {
 OliverAalami(navigationPath: $navigationPath)
 }
 }
 }
 */
