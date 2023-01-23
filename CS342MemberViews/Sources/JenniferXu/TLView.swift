//
//  SwiftUIView.swift
//  
//
//  Created by Jennifer Xu on 1/22/23.
//

import SwiftUI





struct TLView: View {
    struct Event: Identifiable{
        let id = UUID()
        var date: String
        var descrip: String
    }

    let events = [
        Event(date: "August 2019", descrip: "Started undergraduate studies at Stanford University"),
        Event(date: "June 2021", descrip: "Interned at Aselo -- developed data auditing tool to spot internal data inconsistincies"),
        Event(date: "September 2021", descrip: "Started TAing for Stanford's introductory computer science program"),
        Event(date: "June 2022", descrip: "Interned at 10x Genomics -- Developed web application for visualizing and recovering faulty customer data"),
        Event(date: "September 2022", descrip: "Started graduate studies at Stanford University")
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            ForEach(events){ event in
                TLEventView(date: event.date, descrip: event.descrip)
            }
            
        }
        .padding()
        
    }
}

struct TL_Previews: PreviewProvider {
    static var previews: some View {
        TLView()
    }
}
