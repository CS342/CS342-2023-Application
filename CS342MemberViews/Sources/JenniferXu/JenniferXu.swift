//
//  
//
//  Created by Jennifer Xu on 1/19/23.
//

import SwiftUI

public struct JenniferXu: View {
   @Binding var navigationPath: NavigationPath
   public var body: some View {
       VStack(){
           Text("Hello, World!")
       }
       .navigationTitle("Jennifer")
    }
    
    public init(navigationPath: Binding<NavigationPath>){
        self._navigationPath = navigationPath
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            JenniferXu(navigationPath: .constant(NavigationPath()))
        }
    }
}
