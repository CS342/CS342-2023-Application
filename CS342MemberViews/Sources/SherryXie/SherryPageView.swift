//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

struct SherryPageView: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 20) {
            SherryView(profileImage: Bundle.module.image(fromFileNamed: page.imageUrl))
            
            Text(page.name)
                .font(.title)
            
            SherryDescriptionView(
                description: Bundle.module.markdown(fromFileNamed: page.description)
            )
        }
    }
}


struct SherryPageView_Previews: PreviewProvider {
    static var previews: some View {
        SherryPageView(page: Page.samplePage)
    }
}
