//
// File.swift
// Created by Shriya Reddy on 1/19/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct ShriyaReddy: View {
    @Binding var navigationPath: NavigationPath
    
    let backgroundGradient = LinearGradient(
        colors: [
            Color.purple,
            Color.white
        ],
        startPoint: .top,
        endPoint: .center
    )
    
    public var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            ScrollView(.vertical) {
                VStack(spacing: 2) {
                    PictureView()
                    Text("Shriya Reddy")
                        .font(.title.bold())
                    Text("Stanford Bioengineering Sophomore")
                    Spacer()
                }
                VStack(spacing: 0) {
                    IntroButton()
                    HobbyButton()
                    HomeButton()
                    Linkedin()
                }
            }
        }
        
        .navigationTitle("Shriya")
    }
        
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ShriyaReddy(navigationPath: .constant(NavigationPath()))
        }
    }
}
