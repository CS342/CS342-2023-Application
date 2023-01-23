//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//
import InstructorViews
import SwiftUI


public struct SherryXie: View {
    @State private var pageIndex = 0
    @Binding var navigationPath: NavigationPath
    
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    public var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    SherryPageView(page: page)
                    Spacer()
                    if page == pages.last {
                        Button("Go back to my home page", action: goToZero)
                            .buttonStyle(.bordered)
                    } else if page.tag == 0 {
                        Button("Check out the places I love!", action: incrementPage)
                            .buttonStyle(.bordered)
                    } else {
                        Button("Next", action: incrementPage)
                            .buttonStyle(.bordered)
                    }
                    Spacer()
                }
                .tag(page.tag)
            }
        }
        .animation(.easeInOut, value: pageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotAppearance.currentPageIndicatorTintColor = .black
            dotAppearance.pageIndicatorTintColor = .gray
        }
    }
    
    func incrementPage() {
        pageIndex += 1
    }
    
    func goToZero() {
        pageIndex = 0
    }
    
    
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}


struct SherryXie_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SherryXie(navigationPath: .constant(NavigationPath()))
        }
    }
}
