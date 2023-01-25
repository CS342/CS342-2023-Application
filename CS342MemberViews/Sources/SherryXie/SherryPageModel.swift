//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Foundation

public struct Page: Identifiable, Equatable {
    public let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description", imageUrl: "work", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Sherry Xie", description: "SherryBio", imageUrl: "SherryXie", tag: 0),
        Page(name: "Shanghai, China", description: "ShanghaiBio", imageUrl: "Shanghai", tag: 1),
        Page(name: "Culver, Indiana", description: "CulverBio", imageUrl: "Culver", tag: 2),
        Page(name: "Paris, France", description: "ParisBio", imageUrl: "Paris", tag: 3)
    ]
}
