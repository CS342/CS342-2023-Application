//
//  Jennifer Xu Profile page
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
                   SocialButton(social: "LI-In-Bug", url:"https://www.linkedin.com/in/jenniferxu01/")
                   SocialButton(social: "github-mark", url:"https://github.com/jennxu23" )
                   SocialButton(url:"https://jennxu.netlify.app/")
               }
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
