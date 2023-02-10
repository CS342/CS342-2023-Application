//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//  
// Timeline containing important career milestones. Timeline design
// inspired by SwiftUI 3.0 - Task Management App UI - Complex UI - MVVM - Xcode 13 - SwiftUI Tutorials
// https://www.youtube.com/watch?v=nKHrsrmA4lM&ab_channel=Kavsoft

// Created by Jennifer Xu on 1/22/23.
//

import SwiftUI

struct TLView: View {
    struct Event: Identifiable {
        let id = UUID()
        var date: String
        var descrip: String
    }

    let events = [
        Event(date: "August 2019", descrip: "Started undergraduate studies at Stanford University"),
        Event(date: "June 2021", descrip: "Interned at Aselo -- developed data auditing tool to spot internal data inconsistincies"),
        Event(date: "September 2021", descrip: "Started TAing for Stanford's introductory computer science program"),
        Event(date: "June 2022", descrip: "Interned at 10x Genomics -- Developed web app for visualizing and recovering faulty customer data"),
        Event(date: "September 2022", descrip: "Started graduate studies at Stanford University")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(events) { event in
                TLEventView(date: event.date, descrip: event.descrip)
            }
        }
        .padding()
    }
}

struct TLPreviews: PreviewProvider {
    static var previews: some View {
        TLView()
    }
}
