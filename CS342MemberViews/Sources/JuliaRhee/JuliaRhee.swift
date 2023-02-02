//
//  SwiftUIView.swift
//  
//
//  Created by Julia Rhee on 2/1/23.
//
import SwiftUI

public struct JuliaRhee: View {
    @Binding var navigationPath: NavigationPath
    public var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(spacing: 2) {
                    HeadshotView()
                    Text("Julia Rhee")
                        .font(.title.bold())
                    Text("Stanford '25")
                    Text("Studying CS + Bio + Creative Writing")
                    Spacer()
                }
                VStack(spacing: 0) {
                    Text("About Me:").font(.headline).frame(width: 350, height: 20, alignment:.leading)
                    Text("Hello! My name is Julia and I am a sophomore at Stanford hailing from Atlanta, Georgia. I come from a family of healthcare professionals, so I have always been interested in healthcare innovation after spending many hours at the dining table listening to my parent's gripes with inefficiencies in treatment and digital health systems. I'm studying Computer Science because I want to learn how to build solutions to problems on my own, so I'm super excited to finally put these skills to practice in this class on the Pediatric Apple Watch Team!  ").font(.caption).frame(width: 350, height: 100, alignment:.leading)
                    Text("Outside of the classroom, I spend lots of time finding ways to stay active as a washed-up high school athlete, whether that be hitting the slopes with the Stanford Ski Team, surfing on the weekends, or playing basketball on the Stanford Club team. I love thrifting, anything produced by Mindy Kaling, and The Cure. I'm broadly interested in digital health, the intersection between tech and media/consumer goods, growth equity, and entrepreneurship, so I'd love to chat if any of our interests align.").font(.caption).frame(width: 350, height: 150, alignment:.leading)
                    LinkedInView()
                }
            }
        }
        .navigationTitle("Julia :)")
    }
        
    public init(navigationPath: Binding<NavigationPath>) {
        self._navigationPath = navigationPath
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            JuliaRhee(navigationPath: .constant(NavigationPath()))
        }
    }
}

