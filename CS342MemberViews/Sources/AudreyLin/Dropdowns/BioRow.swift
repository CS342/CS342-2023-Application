//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import SwiftUI
import StudentViews

struct BioRowView: View {
    @State private var showDetail = false
    var body: some View {
        ZStack {
            Color("SepiaBlue").edgesIgnoringSafeArea(.all)
            HStack {
                Text("Bio:")
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
        }
        if showDetail {
            BioView(description: Bundle.module.markdown(fromFileNamed: "AudreyLinBio"))
        }
    }
}

struct BioRowView_Previews: PreviewProvider {
    static var previews: some View {
        BioRowView()
    }
}
