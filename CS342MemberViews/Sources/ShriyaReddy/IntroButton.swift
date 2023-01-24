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

    public var body: some View {
        VStack() {
            
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
                Text("Shriya Reddy is a second-year undergraduate student at Stanford, with special interests in cancer biology, nanomaterials, tissue engineering, and genomics. She is especially motivated by needs-driven innovation since discovering Stanford Biodesign and is very excited about how medical device and digital health solutions can be developed from a biodesign perspective.")
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
