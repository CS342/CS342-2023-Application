//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct IntroButton: View {
    @State private var showDetails = false

    private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "IntroText", ofType: "txt"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return description
    }
                                        
    public var body: some View {
        VStack {
            Button {
                showDetails.toggle()
            } label: {
                Text("Introduction")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.bordered)
                .tint(.purple)
                .padding()
            
            if showDetails {
                Text(description)
                    .padding()
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroButton()
    }
}
