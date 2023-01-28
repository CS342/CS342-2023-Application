//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//


import SwiftUI


public struct HobbiesRow: View {
    public var body: some View {
        ZStack {
            Color(hue: 0.5639, saturation: 0.0, brightness: 1).ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("Hobbies").font(.custom(
                    "GillSans",
                    fixedSize: 25))
                .padding(.leading, 15)
                .padding(.top, 5)
                .foregroundStyle(.blue.gradient)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        VStack {
                            Image(systemName: "camera.circle")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .cornerRadius(5)
                            Text("Photography")
                                .foregroundColor(.primary)
                                .font(.caption).padding([.bottom], 10)
                        }
                        .padding(.leading, 18)
                        VStack {
                            Image(systemName: "pencil.line")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .cornerRadius(5)
                            Text("Graphic Design")
                                .foregroundColor(.primary)
                                .font(.caption).padding([.bottom], 10)
                        }
                        .padding(.leading, 18)
                        VStack {
                            Image(systemName: "moon.stars.circle")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .cornerRadius(5)
                            Text("Stargazing")
                                .foregroundColor(.primary)
                                .font(.caption).padding([.bottom], 10)
                        }
                        .padding(.leading, 18)
                        VStack {
                            Image(systemName: "dumbbell.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .cornerRadius(5)
                            Text("Fitness")
                                .foregroundColor(.primary)
                                .font(.caption).padding([.bottom], 10)
                        }
                        .padding(.leading, 18)
                        VStack {
                            Image(systemName: "headphones.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                .cornerRadius(5)
                            Text("Music")
                                .foregroundColor(.primary)
                                .font(.caption).padding([.bottom], 10)
                        }
                        .padding(.leading, 18)
                    }
                }.padding([.bottom], 25)
            }
        }
        }
    }


struct Hobbies_Previews: PreviewProvider {
    static var previews: some View {
        HobbiesRow()
    }
}
