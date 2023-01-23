//
//  File.swift
//  
//
//  Created by Adam Zhao on 1/23/23.
//

import SwiftUI

struct Contact: View{
    var body: some View{
        VStack{
            LinkedIn()
            Text("Feel free to reach out at adamzhao@stanford.edu!")
        }
        .navigationTitle("Contact Info")
    }
}


struct Contact_Preview: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            Contact()
        }
        
    }
}
