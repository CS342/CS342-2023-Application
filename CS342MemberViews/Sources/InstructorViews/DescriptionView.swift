//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


/// Displays a view displaying a name, title, and description.
public struct DescriptionView: View {
    private let name: String
    private let title: String
    private let description: LocalizedStringKey
    
    
    public var body: some View {
        VStack(spacing: 8) {
            Text(name)
                .font(.title2.bold())
                .multilineTextAlignment(.center)
            Text(title)
                .font(.title3)
                .multilineTextAlignment(.center)
            Text(description)
                .padding()
        }
    }
    
    
    /// - Parameters:
    ///   - name: The name of the individual.
    ///   - title: The title of the individual.
    ///   - description: A descripton of the individual.
    public init(name: String, title: String, description: LocalizedStringKey) {
        self.name = name
        self.title = title
        self.description = description
    }
}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            DescriptionView(
                name: "Paul Schmiedmayer, Ph.D.",
                title: "Postdoctoral Researcher",
                description: LocalizedStringKey("A **markdown** _example_.")
            )
        }
    }
}
