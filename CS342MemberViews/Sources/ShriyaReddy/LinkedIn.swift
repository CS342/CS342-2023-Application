//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct Linkedin: View {
    @Environment(\.openURL) var openURL
    
    
    public var body: some View {
        if let linkedinURL {
            Button {
                openURL(linkedinURL)
            } label: {
                Text("LinkedIn")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
            .buttonStyle(.bordered)
            .tint(.purple)
            .padding()
        }
    }
    
    
    private var linkedinURL: URL? {
        URL(string: "https://linkedin.com/in/shriya-r-071ba41a4/")
    }
}


struct Linkedin_Previews: PreviewProvider {
     static var previews: some View {
        Linkedin()
    }
}
