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
            .navigationTitle("Some Favorites")
        }
    }
}

enum WhichFact: String, CaseIterable {
    case tofu = "Evening Snack"
    case place = "Home"
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
        case .place:
            Bundle.module.image(fromFileNamed: "Pittsburgh", type: "jpg")
        case .cappucino:
            Bundle.module.image(fromFileNamed: "Cappucino", type: "jpg")
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
