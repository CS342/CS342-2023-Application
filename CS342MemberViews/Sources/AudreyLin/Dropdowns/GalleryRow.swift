//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import SwiftUI

struct GalleryRowView: View {
    @State private var showDetail = false
    var body: some View {
        HStack {
            Text("Recent Photos 🤍:")
                .padding(.horizontal)
                .font(.title3.bold())
                .foregroundColor(Color("Sepia Blue"))
            Spacer()
            
            Button {
                withAnimation {
                    showDetail.toggle()
                }
                print("tapped")
            } label: {
                Label("Graph", systemImage: "chevron.right.circle")
                    .labelStyle(.iconOnly)
                    .imageScale(.medium)
                    .rotationEffect(.degrees(showDetail ? 90 : 0))
                    .padding()
                    .animation(.easeInOut, value: showDetail)
            }
        }
        if showDetail {
            PhotosView()
        }
    }
}

struct GalleryRowView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryRowView()
    }
}
