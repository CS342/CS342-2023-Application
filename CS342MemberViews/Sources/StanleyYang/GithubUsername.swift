//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct GithubUsername: View {
    @Environment(\.openURL) var openURL
    
    
    var body: some View {
        if let githubUsername {
            Button {
                openURL(githubUsername)
            } label: {
                Text("Github: @sjayyang")
                    .frame(maxWidth: .infinity, idealHeight: 32)
            }
                .buttonStyle(.borderedProminent)
                .padding()
                .tint(.green)
        }
    }
    
    
    private var githubUsername: URL? {
        URL(string: "https://github.com/SJayYang")
    }
}


struct GithubUsername_Previews: PreviewProvider {
    static var previews: some View {
        GithubUsername()
    }
}
