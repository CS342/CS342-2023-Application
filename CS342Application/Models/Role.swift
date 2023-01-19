//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

enum Role: Int {
    case lead
    case instructor
    case projectCoach
    case student
    
    
    var plural: String {
        switch self {
        case .lead:
            return "Course Leads"
        case .instructor:
            return "Instructors"
        case .projectCoach:
            return "Project Coachs"
        case .student:
            return "Students"
        }
    }
}
