//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI
import InstructorViews


struct ProfileRow: View {
    var body: some View {
        VStack {
            Bundle.module.image(fromFileNamed: "network-compressed")
                .resizable()
                .ignoresSafeArea(edges: .top)
                .frame(height: 160)
            HStack {
                ProfileView(profileImage: Bundle.module.image(fromFileNamed: "CaitlinKunchur")).frame(width: 200)
                VStack {
                    Text("Caitlin Kunchur").font(.custom(
                        "Helvetica",
                        fixedSize: 22))
                    .multilineTextAlignment(.center).foregroundStyle(.white).fontWeight(.bold)
                    Text("Stanford University").font(.custom(
                        "Helvetica", fixedSize: 18)).foregroundStyle(.white)
                    Text("Class of 2024").font(.custom(
                        "Helvetica", fixedSize: 18)).foregroundStyle(.white)
                    SocialButtons()
                }.frame(width: 170)
                Spacer()
            } .offset(y: -150)
            
            Text("Caitlin Kunchur is a junior at Stanford studying Biomedical Computation. She is a graphics and tech team staffer for the Stanford Daily and co-chair of the Stanford Students in Biodesign Connect committee. Her past research experience inlcudes automating large-scale structural phylogeny for drug repurposing and developing software for automated retinal image processing. Her current research interests are using NLP to extract clinical outcomes from EHR records for sarcoma and lung cancer patients. In her free time she enjoys designing fake album covers, stargazing, taking long train rides, and listening to English Rock.") .multilineTextAlignment(.center).font(.caption) .padding(15).offset(y: -150).foregroundStyle(.white)
            Divider()
            
        }
    }
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow()
    }
}
