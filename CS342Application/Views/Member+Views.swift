//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import AbhinavAgarwal
import AlexisLowber
import AndyWang
import AshleyGriffin
import AudreyLin
import BrookeKrajancich
import CaitlinKunchur
import HamedHekmat
import JenMoore
import JiahuiChen
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
    // swiftlint:disable:next cyclomatic_complexity
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
            case .oliverAalami:
                OliverAalami(navigationPath: navigationPath)
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
            case .jiahuiChen:
                JiahuiChen()
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
            case .jenMoore:
                JenMoore()
            }
        }
        return memberView
    }
}
