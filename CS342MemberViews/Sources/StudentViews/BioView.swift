//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

// Source

import SwiftUI

public struct BioView: View {
    private let description: LocalizedStringKey
    
    
    public var body: some View {
        ZStack {
            Color("Light Brown").edgesIgnoringSafeArea(.all)
            Text(description)
                .padding(.horizontal)
                .foregroundColor(Color("Americano Brown (med)"))
        }
    }
    
    
    public init(description: LocalizedStringKey) {
        self.description = description
    }
}

struct BioView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            BioView(description: "example.")
        }
    }
}
