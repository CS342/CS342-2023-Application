//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//


import SwiftUI
import InstructorViews

public struct ListensRow: View {
   // swiftlint:disable closure_body_length
        public var body: some View {
            ZStack {
            Color(hue: 0.5639, saturation: 0.0, brightness: 1)
            
            VStack (alignment: .leading){
                Text("Recent Listens").font(.custom(
                    "GillSans",
                    fixedSize: 25))
                    .padding(.leading, 15)
                    .padding(.top, 5)
                    .foregroundStyle(.blue.gradient)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        VStack {
                            Bundle.module.image(fromFileNamed: "car-cover")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .border(Color.blue, width: 4)
                                .clipped()
                            VStack {
                                Text("The Car")
                                Text("Arctic Monkeys").foregroundColor(.primary)
                                    .font(.caption)
                            }
                        }
                        .padding(.leading, 18)
                        VStack {
                            Bundle.module.image(fromFileNamed: "0151-cover")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .border(Color.blue, width: 4)
                                .cornerRadius(5)
                            VStack {
                                Text("0151")
                                Text("The Night Cafe").foregroundColor(.primary)
                                    .font(.caption)
                            }
                        }
                        .padding(.leading, 18)
                        VStack {
                            Bundle.module.image(fromFileNamed: "movement-cover")
                                .resizable()
                                .border(Color.blue, width: 4)
                                .frame(width: 60, height: 60)
                                .cornerRadius(5)
                            VStack {
                                Text("Feel Something")
                                Text("Movements").foregroundColor(.primary)
                                    .font(.caption)
                            }
                        }
                        .padding(.leading, 18)
                        VStack {
                            Bundle.module.image(fromFileNamed: "1975-cover")
                                .resizable()
                                .border(Color.blue, width: 4)
                                .frame(width: 60, height: 60)
                                .cornerRadius(5)
                            VStack {
                                Text("Being Funny in a Foreign Language").multilineTextAlignment(.leading) .frame(width: 120)
                                Text("The 1975").foregroundColor(.primary)
                                    .font(.caption)
                            }
                            
                        }
                        .padding(.leading, 18)
                    }
                }
            }
        }
    }
}


struct Listens_Previews: PreviewProvider {
    static var previews: some View {
        ListensRow()
    }
}
