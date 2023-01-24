//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct HobbyButton: View {
    @State private var showDetails = false

    public var body: some View {
        HStack() {
            Button {
                showDetails.toggle()
            } label: {
                Text("Hobbies")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.bordered)
                .tint(.purple)
                .padding()
            
            if showDetails {
                Text("She loves to dance, and is part of Stanford’s premier competitive Garba Raas dance team. Recently, she has also started to crochet.")
                    .padding()
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct HobbyView_Previews: PreviewProvider {
    static var previews: some View {
        HobbyButton()
    }
}
