//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
// Jennifer Xu Member View. Modeled partially after Paul Schmiedmayer's Member View.
//
// Cited:
// GitHub Logo: GitHub Logos and Usage - https://github.com/logos
// LinkedIn Logo: LinkedIn Brand Guidelines - https://brand.linkedin.com/downloads
//
//  Created by Jennifer Xu on 1/19/23.
//

import SwiftUI

public struct JenniferXu: View {
   @Binding var navigationPath: NavigationPath
    
   public var body: some View {
       ScrollView(.vertical){
           VStack(){
               ProfileView()
               
               //Name and majors
               VStack(spacing: 8) {
                   Text("Jennifer Xu")
                       .font(.title2.bold())
                   Text("B.S Biomedical Computation\nM.S Computer Science")
                       .font(.title3)
               }
               
               //Social Media links
               HStack(){
                   SocialButton(social: "LI-In-Bug", url:"https://www.linkedin.com/in/jenniferxu01/", label: "linkedin")
                   SocialButton(social: "github-mark", url:"https://github.com/jennxu23", label:"github" )
                   SocialButton(url:"https://jennxu.netlify.app/", label: "personal")
               }
               
               // Timeline and more about me
               VStack(spacing: 8){
                   Text("About Me")
                       .font(.title2.bold())
                   Text("Hi! Welcome to my View! I'm interested in Software Engineering, ML/AI, and Biotech. You can see some of my previous endeavors below.")
                       .font(.title3)
                   TLView()
               }
               .padding()
               
           }
       }
       .navigationTitle("Jennifer")
    }
    
    public init(navigationPath: Binding<NavigationPath>){
        self._navigationPath = navigationPath
    }
    
}

struct JenniferXu_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            JenniferXu(navigationPath: .constant(NavigationPath()))
        }
    }
}
