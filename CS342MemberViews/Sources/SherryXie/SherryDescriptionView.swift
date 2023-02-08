//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


/// Displays a view displaying a name, title, and description.
public struct SherryDescriptionView: View {
    private let description: LocalizedStringKey
    
    
    public var body: some View {
        Text(description)
            .padding()
    }
    
    
    /// - Parameters:
    ///   - description: A descripton of the individual.
    public init(description: LocalizedStringKey) {
        self.description = description
    }
}


struct SherryDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            SherryDescriptionView(
                description: LocalizedStringKey("A **markdown** _example_.")
            )
        }
    }
}
