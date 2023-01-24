//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//  
// A single timeline event -- includes a description, a date, and dot.
//
// Cited:
// Task Management App Tutorial- https://www.youtube.com/watch?v=nKHrsrmA4lM&ab_channel=Kavsoft
//
// Created by Jennifer Xu on 1/22/23.
//

import SwiftUI

struct TLEventView: View {
    var date: String
    var descrip: String
    
    var body: some View {
        HStack(){
            VStack(){
                // Timeline Dot
                Circle()
                    .fill(.blue)
                    .frame(width: 15, height: 15)
                    .background(
                        Circle()
                            .stroke(.blue, lineWidth: 1)
                            .padding(-3)
                    )
                Rectangle()
                    .fill(.blue)
                    .frame(width: 3, height: 80)
            }
            
            // Timeline Event description
            VStack(alignment: .leading){
                Text(date)
                    .bold()
                Text(descrip)
            }
            
            
        }
        
        
    }
}

struct TLEvent_Previews: PreviewProvider {
    static var previews: some View {
        TLEventView(date: "august 2019", descrip: "Started undergraduate studies at Stanford University")
    }
}
 
