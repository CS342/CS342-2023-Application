//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//


enum Member: String, Identifiable, CaseIterable {
    case oliverAalami = "Prof. Oliver Aalami, MD"
    case paulSchmiedmayer = "Paul Schmiedmayer, Ph.D."
    case shriyaReddy = "Shriya Reddy"
    case audreyLin = "Audrey Lin"
    case vishnuRavi = "Vishnu Ravi, MD"
    case caitlinKunchur = "Caitlin Kunchur"
    case sherryXie = "Sherry Xie"
    case andyWang = "Andy Wang"
    case rajPabari = "Raj Pabari"
    case hamedHekmat = "Hamed Hekmat"
    case justinWu = "Justin Wu"
    case ashleyGriffin = "Ashley Griffin, Ph.D."
    case stanleyYang = "Stanley Yang"
    case parthavShergill = "Parthav Shergill"
    
    
    static var allMembers: [Role: [Member]] {
        var allMembers: [Role: [Member]] = [:]
        
        for member in Member.allCases {
            guard allMembers[member.role] != nil else {
                allMembers[member.role] = [member]
                continue
            }
            
            allMembers[member.role]?.append(member)
        }
        
        return allMembers
    }
    
    static var allMembersArray: [(role: Role, members: [Member])] {
        let allMembersArray = allMembers.map { ($0.key, $0.value) }
        return allMembersArray.sorted { lhs, rhs in
            lhs.0.rawValue < rhs.0.rawValue
        }
    }
    
    
    var role: Role {
        switch self {
        case .paulSchmiedmayer, .ashleyGriffin, .vishnuRavi:
            return .instructor
        case .oliverAalami:
            return .lead
        case .caitlinKunchur, .andyWang, .rajPabari, .stanleyYang, .audreyLin, .parthavShergill, .justinWu, .hamedHekmat, .sherryXie, .shriyaReddy:
            return .student
        }
    }
    
    var id: RawValue {
        rawValue
    }
}
