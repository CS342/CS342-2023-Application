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
    
    
    public var body: some View {
        VStack(spacing: 3) {
            Text(name)
                .font(.title.bold())
                .multilineTextAlignment(.center)
                .foregroundColor(Color("Gray"))
            Text(title)
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("Gray"))
        }
    }
    
    
    /// - Parameters:
    ///   - name: The name of the individual.
    ///   - title: The title of the individual.
    ///   - description: A descripton of the individual.
    public init(name: String, title: String) {
        self.name = name
        self.title = title
    }
}


struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            DescriptionView(
                name: "Paul Schmiedmayer, Ph.D.",
                title: "Postdoctoral Researcher"
            )
        }
    }
}
