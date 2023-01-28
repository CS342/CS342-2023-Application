//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//


import SwiftUI


public struct HobbiesRow: View {
    struct ImageOptions: ViewModifier {
        func body(content: Content) -> some View {
            content.frame(width: 35, height: 35)
                .cornerRadius(5)
        }
    }
    struct Hobby: Identifiable {
        let id: UUID = UUID()
        let imageName: String
        let hobbyName: String
        
    }
    
    struct ScrollContent: View {
        let imageNames = ["camera.circle",  "pencil.line", "moon.stars.circle", "dumbbell.fill", "headphones.circle.fill"]
        let hobbyNames = ["Photography", "Graphic Design", "Stargazing", "Fitness", "Music"]
        let hobbies = [
            Hobby(imageName: "camera.circle", hobbyName: "Photography"),
            Hobby(imageName: "pencil.line", hobbyName: "Graphic Design"),
            Hobby(imageName:"moon.stars.circle",  hobbyName: "Stargazing"),
            Hobby(imageName: "dumbbell.fill", hobbyName:"Fitness"),
            Hobby(imageName: "headphones.circle.fill", hobbyName: "Music")
        ]
        
        public var body: some View {
            ScrollView(.horizontal, showsIndicators: false)
            {
                HStack{
                    ForEach(hobbies) { hobby in
                        VStack {
                            Image(systemName: hobby.imageName)
                                .resizable()
                                .modifier(ImageOptions())
                            Text(hobby.hobbyName)
                                .foregroundColor(.primary)
                                .font(.caption).padding([.bottom], 10)
                        }
                        .padding(.leading, 18)
                    }
                    
                    //                    VStack {
                    //                        Image(systemName: "pencil.line")
                    //                            .resizable()
                    //                            .modifier(ImageOptions())
                    //                        Text("Graphic Design")
                    //                            .foregroundColor(.primary)
                    //                            .font(.caption).padding([.bottom], 10)
                    //                    }
                    //                    .padding(.leading, 18)
                    //                    VStack {
                    //                        Image(systemName: "moon.stars.circle")
                    //                            .resizable()
                    //                            .modifier(ImageOptions())
                    //                        Text("Stargazing")
                    //                            .foregroundColor(.primary)
                    //                            .font(.caption).padding([.bottom], 10)
                    //                    }
                    //                    .padding(.leading, 18)
                    //                    VStack {
                    //                        Image(systemName: "dumbbell.fill")
                    //                            .resizable()
                    //                            .modifier(ImageOptions())
                    //                        Text("Fitness")
                    //                            .foregroundColor(.primary)
                    //                            .font(.caption).padding([.bottom], 10)
                    //
                    //                    }
                    //                    .padding(.leading, 18)
                    //                    VStack {
                    //                        Image(systemName: "headphones.circle.fill")
                    //                            .resizable()
                    //                            .modifier(ImageOptions())
                    //                        Text("Music")
                    //                            .foregroundColor(.primary)
                    //                            .font(.caption).padding([.bottom], 10)
                    //                    }
                    //                    .padding(.leading, 18)
                    //                }
                }.padding([.bottom], 25)
            }
        }
    }
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
                
            ScrollContent()
            }
           
        }
    }
    
}


struct Hobbies_Previews: PreviewProvider {
    static var previews: some View {
        HobbiesRow()
    }
}
