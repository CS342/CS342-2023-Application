//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct Contact: View {
    var body: some View {
        VStack {
            LinkedIn()
            Text("Feel free to reach out at adamzhao@stanford.edu!")
        }
        .navigationTitle("Contact Info")
    }
}


struct ContactPreview: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Contact()
        }
    }
}
