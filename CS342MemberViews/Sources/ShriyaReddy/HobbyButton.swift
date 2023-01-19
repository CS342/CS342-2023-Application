//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct ButtonView: View {
    @State private var showDetails = false

    public var body: some View {
        VStack() {
            if showDetails {
                Text("She loves to dance, and is part of Stanford’s premier competitive Garba Raas dance team. She loves choreography, teaching, and just vibing to fun music. Recently, she has also started to crochet.")
                    .padding()
                    .font(.title3)
            }
            
            Button {
                showDetails.toggle()
            } label: {
                Text("Hobbies")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.bordered)
                .tint(.purple)
                .padding()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
