//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import AbhinavAgarwal
import AlexisLowber
import AnanyaVasireddy
import AndyWang
import AshleyGriffin
import AudreyLin
import BrookeKrajancich
import CaitlinKunchur
import DanielGuo
import EmmyThamakaison
import HamedHekmat
import JenMoore
import JenniferXu
import JuliaRhee
import JustinWu
import OliverAalami
import ParthavShergill
import PaulSchmiedmayer
import RajPabari
import SarahBarragan
import SherryXie
import ShriyaReddy
import SonyaJin
import StanleyYang
import SwiftUI


extension Member {
    // swiftlint:disable:next cyclomatic_complexity function_body_length
    func memberView(with navigationPath: Binding<NavigationPath>) -> some View {
        @ViewBuilder
        var memberView: some View {
            switch self {
            case .paulSchmiedmayer:
                PaulSchmiedmayer(navigationPath: navigationPath)
            case .shriyaReddy:
                ShriyaReddy(navigationPath: navigationPath)
            case .audreyLin:
                AudreyLin(navigationPath: navigationPath)
            case .vishnuRavi:
                Text("Vishnu 👋")
            case .emmyThamakaison:
                EmmyThamakaison(navigationPath: navigationPath)
            case .oliverAalami:
                OliverAalami(navigationPath: navigationPath)
            case .ananyaVasireddy:
                AnanyaVasireddy(navigationPath: navigationPath)
            case .sarahBarragan:
                SarahBarragan(navigationPath: navigationPath)
            case .caitlinKunchur:
                CaitlinKunchur(navigationPath: navigationPath)
            case .sherryXie:
                SherryXie(navigationPath: navigationPath)
            case .andyWang:
                AndyWang(navigationPath: navigationPath)
            case .rajPabari:
                RajPabari()
            case .sonyaJin:
                SonyaJin(navigationPath: navigationPath)
            case .hamedHekmat:
                HamedHekmat()
            case .justinWu:
                JustinWu(navigationPath: navigationPath)
            case .ashleyGriffin:
                AshleyGriffin(navigationPath: navigationPath)
            case .jenniferXu:
                JenniferXu(navigationPath: navigationPath)
            case .brookeKrajancich:
                BrookeKrajancich(navigationPath: navigationPath)
            case .alexisLowber:
               AlexisLowber()
            case .abhinavAgarwal:
                AbhinavAgarwal(navigationPath: navigationPath)
            case .stanleyYang:
                StanleyYang(navigationPath: navigationPath)
            case .parthavShergill:
                ParthavShergill(navigationPath: navigationPath)
            case .danielGuo:
                DanielGuo(navigationPath: navigationPath)
            case .jenMoore:
                JenMoore()
            case .juliaRhee:
                JuliaRhee(navigationPath: navigationPath)
            }
        }
        return memberView
    }
}
