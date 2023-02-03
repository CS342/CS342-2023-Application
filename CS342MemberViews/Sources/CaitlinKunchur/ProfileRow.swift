//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import InstructorViews
import SwiftUI


struct ProfileRow: View {
    let bioText = Bundle.module.markdown(fromFileNamed: "CaitlinKunchur-bio")
    var body: some View {
        VStack {
            Bundle.module.image(fromFileNamed: "network-compressed")
                .resizable()
                .ignoresSafeArea(edges: .top)
                .frame(height: 160)
            HStack {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "CaitlinKunchur")).frame(width: 200)
                VStack {
                    Text("Caitlin Kunchur")
                        .font(.custom( "Helvetica", fixedSize: 22))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                    Text("Stanford University")
                        .font(.custom("Helvetica", fixedSize: 18))
                        .foregroundStyle(.white)
                    Text("Class of 2024")
                        .font(.custom("Helvetica", fixedSize: 18))
                        .foregroundStyle(.white)
                    SocialButtons()
                }.frame(width: 170)
                Spacer()
            } .offset(y: -150)
            
            Text(bioText).multilineTextAlignment(.center).font(.caption) .padding(15).offset(y: -150).foregroundStyle(.white)
            Divider()
        }
    }
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow()
    }
}
