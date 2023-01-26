//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
// Citations: Segmented Control by Sean Allen
//

import Foundation
import SwiftUI

struct KatieLiuView: View {
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .brown
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
    }
    
    @State private var selectedSide: WhichFact = .tofu
    var body: some View {
        VStack {
                Text("These are...")
                    .bold()
                    .font(.largeTitle)
            Text("a few of my favorite things!")
            Picker("My Favorite...", selection: $selectedSide) {
                ForEach(WhichFact.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            Spacer()
            CappuccinoView(selectedSide: selectedSide)
            Spacer()
        }
    }
}

enum WhichFact: String, CaseIterable {
    case tofu = "Evening Meal"
    case place = "City in the US"
    case cappuccino = "Morning Drink"
    var id: String {
        rawValue
    }
}

struct CappuccinoView: View {
    var selectedSide: WhichFact
    var body: some View {
        switch selectedSide {
        case .tofu:
            Bundle.module.image(fromFileNamed: "Tofu", type: "jpg")
                .resizable()
                .frame(width: 500, height: 500)
        case .place:
            Bundle.module.image(fromFileNamed: "Pittsburgh", type: "jpg")
                .resizable()
                .frame(width: 620, height: 500)
        case .cappuccino:
            Bundle.module.image(fromFileNamed: "Cappuccino", type: "jpg")
                .resizable()
                .frame(width: 400, height: 500)
        }
    }
}

struct TofuImageView: View {
    var body: some View {
        Bundle.module.image(fromFileNamed: "Tofu", type: "jpg")
            .resizable()
            .frame(width: 500, height: 500)
    }
}

struct MoreInfoView: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            KatieLiuView()
                .preferredColorScheme(.light)
        }
    }
}
