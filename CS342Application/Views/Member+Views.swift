//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import AshleyGriffin
import CarlosGuestrin
import NicholasBernhardtLanier
import OliverAalami
import PaulSchmiedmayer
import RaghavSamavedam
import SwiftUI
import VarunShenoy
import VishnuRavi
import StanleyYang


extension Member {
    func memberView(with navigationPath: Binding<NavigationPath>) -> some View {
        @ViewBuilder
        var memberView: some View {
            switch self {
            case .oliverAalami:
                OliverAalami()
            case .carlosGuestrin:
                CarlosGuestrin()
            case .paulSchmiedmayer:
                PaulSchmiedmayer(navigationPath: navigationPath)
            case .vishnuRavi:
                VishnuRavi()
            case .ashleyGriffin:
                AshleyGriffin()
            case .nicholasBernhardtLanier:
                NicholasBernhardtLanier()
            case .raghavSamavedam:
                RaghavSamavedam()
            case .varunShenoy:
                VarunShenoy()
            case .stanleyYang:
                StanleyYang(navigationPath: navigationPath)
            }
        }
        return memberView
    }
}
