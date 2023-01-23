//
//  File.swift
//  
//
//  Created by Adam Zhao on 1/23/23.
//

enum AdamDestinations: String, Identifiable {
    case Photography
    case Contact
    
    var id: String {
        rawValue
    }
}
