//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

enum AdamDestinations: String, Identifiable {
    case photography
    case contact
    
    var id: String {
        rawValue
    }
}
