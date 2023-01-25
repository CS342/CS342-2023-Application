//
//  File.swift
//
//
//  Created by Katie Liu on 1/24/23.
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
        NavigationView {
            VStack {
                Picker("Food and Fall", selection: $selectedSide) {
                    ForEach(WhichFact.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Spacer()
                CappucinoView(selectedSide: selectedSide)
                Spacer()
            }
            .navigationTitle("My Favorite...")
        }
    }
}

enum WhichFact: String, CaseIterable {
    case tofu = "Evening Meal"
    case place = "City in the US"
    case cappucino = "Morning Drink"
    var id: String {
        rawValue
    }
}

struct CappucinoView: View {
    var selectedSide: WhichFact
    var body: some View {
        switch selectedSide {
        case .tofu:
            Bundle.module.image(fromFileNamed: "Tofu", type: "jpg")
                .resizable()
                .frame(width: 500, height: 500)
                .shadow(color: .yellow, radius: 0)
            Spacer()
            Text("...is Mapo Tofu!")
                .font(.headline)
        case .place:
            Bundle.module.image(fromFileNamed: "Pittsburgh", type: "jpg")
                .resizable()
                .frame(width: 620, height: 500)
                .shadow(color: .white, radius: 100)
            Spacer()
            Text("...is Pittsburgh!")
                .font(.headline)
        case .cappucino:
            Bundle.module.image(fromFileNamed: "Cappuccino", type: "jpg")
                .resizable()
                .frame(width: 400, height: 500)
                .shadow(color: .white, radius: 100)
            Spacer()
            Text("...is a cappuccino!")
                .font(.headline)
        }
    }
}

struct TofuImageView: View {
    var body: some View {
        Bundle.module.image(fromFileNamed: "Tofu", type: "jpg")
            .resizable()
            .frame(width: 250, height: 400)
            .shadow(color: .white, radius: 100)
    }
}

struct MoreInfoView: PreviewProvider {
    static var previews: some View {
            KatieLiuView()
            .preferredColorScheme(.light)
    }
}
