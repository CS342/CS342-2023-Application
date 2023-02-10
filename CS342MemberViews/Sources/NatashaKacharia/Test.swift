//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct Test: View {
    @State private var showDetails = false
    @State var counter = 0
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Button("Can you guess my favorite color?") {
                showDetails.toggle()
            }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
            if showDetails {
                Text("Pink").foregroundColor(.pink).font(.largeTitle)
                Text(" 'Whoever said orange was the new pink was serioudly disturbed'").foregroundColor(.pink).italic()
                Text("-Elle Woods").foregroundColor(.pink)
                Spacer()
            }
            Spacer()
                .frame(width: 0, height: 36.0, alignment: .topLeading)
            Label("I", systemImage: "heart").foregroundColor(.pink).opacity(0.40)
            Label("Simply", systemImage: "heart.fill").foregroundColor(.pink).opacity(0.60)
            Label("love", systemImage: "heart.circle").foregroundColor(.pink).opacity(0.80)
            Label("PINK", systemImage: "heart.circle.fill").foregroundColor(.pink)
            Spacer()
                .frame(width: 0, height: 36.0, alignment: .topLeading)
            Text("Click if you like pink: \(self.counter)")
                .foregroundColor(.pink)
                .frame(alignment: .topLeading)
            Button(
                action: {
                    self.counter += 1
                },
                label: {
                    buttonContent
                }
            )
        }
    }
    
    
    @ViewBuilder
    private var buttonContent: some View {
        Spacer().frame(width: 0, height: 36.0, alignment: .topLeading)
        HStack {
            Image(systemName: "plus")
            Text("Increment")
        }.padding(10.0)
            .tint(.pink)
            .frame(alignment: .topLeading)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(lineWidth: 2.0)
                    .tint(.pink)
            )
    }
}


struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
