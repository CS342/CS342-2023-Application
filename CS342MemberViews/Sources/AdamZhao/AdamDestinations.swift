//
//  File.swift
//  
//
//  Created by Adam Zhao on 1/23/23.
//

enum AdamDestinations: String, Identifiable {
    case photography
    case contact
    
    var id: String {
        rawValue
    }
}
