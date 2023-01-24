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
        ScrollView(.vertical) {
            VStack(spacing: 50) {
                HeadShot()
                DescriptionView()
                    .offset(y: -25)
                PerformLink()
                    .offset(y: -100)
                Button {
                        navigationPath.append(AdamDestinations.photography)
                    } label: {
                        Text("Photography")
                            .frame(maxWidth: .infinity, idealHeight: 32)
                }
                            .buttonStyle(.borderedProminent)
                            .tint(.black)
                            .padding()
                            .offset(y: -175)
                Button {
                    navigationPath
                        .append(AdamDestinations.contact)
                } label: {
                    Text("Contact Me")
                        .frame(maxWidth: .infinity, idealHeight: 32)
                }
                .buttonStyle(.borderedProminent)
                .padding()
                .offset(y: -250)
            }
        }
                    .navigationDestination(for: AdamDestinations.self) { destination in
                        switch destination {
                        case .photography:
                            Photography()
                        case .contact:
                            Contact()
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

    static var previews: some View {
        NavigationStack {
            AdamZhao(navigationPath: $navigationPath)
        }
    }
}
