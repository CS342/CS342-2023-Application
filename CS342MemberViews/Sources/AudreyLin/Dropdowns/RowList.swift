//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import SwiftUI

struct RowListView: View {
    
    var body: some View {
        ZStack {
            Color("Sepia Blue").edgesIgnoringSafeArea(.all)
            NavigationView {
                List {
                    BioRowView()
                        .listRowBackground(Color("Light Brown"))
                    GalleryRowView()
                        .listRowBackground(Color("Gray"))
                }
                .background(Color("Millbrook Brown (dark)"))
                .scrollContentBackground(.hidden)
            }
        }
        .frame(height: 500)
    }
}

struct RowListView_Previews: PreviewProvider {
    static var previews: some View {
        RowListView()
    }
}
