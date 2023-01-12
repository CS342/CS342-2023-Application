//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct MemberList: View {
    @State var navigationPath = NavigationPath()
    
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            List(Member.allMembersArray, id: \.role) { memberGroup in
                Section(memberGroup.role.plural) {
                    ForEach(memberGroup.members) { member in
                        NavigationLink(member.rawValue, value: member)
                    }
                }
            }
                .navigationDestination(for: Member.self) { member in
                    member.memberView(with: $navigationPath)
                }
                .navigationTitle("CS342")
        }
    }
}

struct MemberList_Previews: PreviewProvider {
    static var previews: some View {
        MemberList()
    }
}
