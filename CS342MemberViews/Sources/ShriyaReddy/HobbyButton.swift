//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

private var description: String {
        guard let descriptionPath = Bundle.module.path(forResource: "HobbyText", ofType: "txt"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return description
    }

public struct HobbyButton: View {
    @State private var showDetails = false
                                    
    public var body: some View {
        HStack {
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
                Text(description)
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
