//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI
import InstructorViews


public struct ReadsRow: View {
    
    public var body: some View {
        ZStack {
            Color(hue: 0, saturation: 0.0, brightness: 1)
            VStack (alignment: .leading){
                Text("Recent Reads").font(.custom(
                    "GillSans",
                    fixedSize: 25))
                    .padding(.leading, 15)
                    .padding(.top, 5)
                    .foregroundStyle(.blue.gradient)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        VStack {
                            Bundle.module.image(fromFileNamed: "artemis-cover")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 45, height: 90)
                                .border(Color.blue, width: 4)
                                .cornerRadius(5)
                            
                            VStack {
                                Text("Artemis")
                                Text("Andy Weir").foregroundColor(.primary)
                                    .font(.caption).padding([.bottom], 10)
                            }
                        }
                        .padding(.leading, 18)
                        VStack {
                            Bundle.module.image(fromFileNamed: "misery-cover")
                                .resizable()
                                .frame(width: 45, height: 90)
                                .border(Color.blue, width: 4)
                                .cornerRadius(5)
                            VStack {
                                Text("Misery")
                                Text("Stephen King").foregroundColor(.primary)
                                    .font(.caption).padding([.bottom], 10)
                            }
                        }
                        .padding(.leading, 18)
                        VStack {
                            Bundle.module.image(fromFileNamed: "hobbit-cover")
                                .resizable()
                                .frame(width: 45, height: 90)
                                .border(Color.blue, width: 4)
                                .cornerRadius(5)
                            VStack {
                                Text("The Hobbit")
                                Text("J.R.R. Tolkien").foregroundColor(.primary)
                                    .font(.caption).padding([.bottom], 10)
                            }
                        }
                        .padding(.leading, 18)
                        VStack {
                            Bundle.module.image(fromFileNamed: "white-tiger")
                                .resizable()
                                .frame(width: 45, height: 90)
                                .border(Color.blue, width: 4)
                                .cornerRadius(5)
                            VStack {
                                Text("The White Tiger")
                                Text("Aravind Adiga").foregroundColor(.primary)
                                    .font(.caption).padding([.bottom], 10)
                            }
                            
                        }
                        .padding(.leading, 18)
                    }
                }
            }
        }
    }
}


struct Reads_Previews: PreviewProvider {
    static var previews: some View {
        ReadsRow()
    }
}
