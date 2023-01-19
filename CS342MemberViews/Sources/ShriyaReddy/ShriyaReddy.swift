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
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 2) {
                PictureView()
                //IntroView()
                Text("Shriya Reddy")
                    .font(.title.bold())
                Text("Stanford Bioengineering Sophomore")
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
