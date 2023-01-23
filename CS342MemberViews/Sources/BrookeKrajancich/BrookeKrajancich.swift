//
//  SwiftUIView.swift
//  
//
//  Created by Brooke Krajancich on 1/19/23.
//

import SwiftUI


public struct BrookeKrajancich: View {
    @Binding var navigationPath: NavigationPath
    
    var backgroundColor: Color = Color(red: 0.067, green: 0.094, blue: 0.153)
    
    public var body: some View {
        ScrollView(.vertical) {
            VStack{
                ProfilePanel()
            }
        }
        .navigationTitle("Brooke")
        .background(backgroundColor)

    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct BrookeKrajancich_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BrookeKrajancich(navigationPath: .constant(NavigationPath()))
        }
    }
}
