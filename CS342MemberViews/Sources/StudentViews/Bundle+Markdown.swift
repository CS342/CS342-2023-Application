//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
import SwiftUI


extension Bundle {
    /// Loads a markdown file from the `Bundle` and returns the content as a `LocalizedStringKey`.
    /// - Parameter name: The name of the file.
    /// - Returns: `LocalizedStringKey` that can be used to use in the SwiftUI `Text` view.
    public func markdown(fromFileNamed name: String) -> LocalizedStringKey {
        guard let descriptionPath = self.path(forResource: name, ofType: "md"),
              let description = try? String(contentsOfFile: descriptionPath) else {
            return ""
        }
        
        return LocalizedStringKey(description)
    }
}
