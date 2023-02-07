//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


public struct InterestsView: View {
    private let interests = [
        "sports", "country music", "yummy food", "comedy shows", "traveling", "dogs"
    ]
    let accentColor: Color
    @Environment(\.openURL) private var openURL


    public var body: some View {
        VStack {
            Text("Interests")
                .font(.custom(
                    "Baskerville-BoldItalic",
                    fixedSize: 30
                ))
                .foregroundColor(accentColor)
                .multilineTextAlignment(.center)
                .padding(.all, 0.2)
            HStack {
                ForEach(interests[...(interests.count / 2 - 1)], id: \.self) { interest in
                    createInterest(interest: interest)
                }
            }
            HStack {
                ForEach(interests[(interests.count / 2)...], id: \.self) { interest in
                    createInterest(interest: interest)
                }
            }
        }
    }
    
    private func createInterest(interest: String) -> some View {
        Button {
        }
        label: {
            Text(verbatim: interest)
                .frame(minWidth: 70)
        }
        .buttonStyle(.borderedProminent)
        .clipShape(Capsule())
        .frame(height: 36)
        .shadow(color: .white, radius: 15)
        .tint(accentColor)
    }
}


struct InterestsView_Previews: PreviewProvider {
    static var previews: some View {
        let accentColor = Color(red: 191 / 255, green: 127 / 255, blue: 110 / 255)
        InterestsView(accentColor: accentColor)
    }
}
