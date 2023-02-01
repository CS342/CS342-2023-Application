//
// File.swift
// Created by Shriya Reddy on 1/24/23.
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import MapKit
import SwiftUI


public struct HomeButton: View {
    @State private var showDetails = false
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 44.182205, longitude: -84.506836),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
    )

    public var body: some View {
        VStack {
            Button {
                showDetails.toggle()
            } label: {
                Text("Home")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.bordered)
                .tint(.purple)
                .padding()
            
            if showDetails {
                HStack {
                    Text("Shriya was born and raised in southeastern Michigan.")
                        .padding()
                        .multilineTextAlignment(.center)
                    Map(coordinateRegion: $region)
                        .frame(height: 200)
                        .padding()
                        .clipShape(Circle().scale(0.7))
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton()
    }
}
