//
//  File.swift
//  
//
//  Created by Sherry X. on 1/21/23.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var credit: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description", imageUrl: "work", credit: "This is a sample credit", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Sherry Xie", description: "Sherry is a sophomore at Stanford studying Computer Science and minoring in History. Originally from Shanghai, China, Sherry went to high school in Indiana. Sherry is passionate about technology, healthcare innovation, and social impact. In her free time, you can see her avidly reading in random spots on campus, frantically talk about the latest tennis news, and being a chaotic foodie running around SF.", imageUrl: "SherryXie", credit: "I followed this tutorial: https://www.youtube.com/watch?v=OPTzgeIKMgU to learn about sliding pages", tag: 0),
        Page(name: "Shanghai, China", description: "I was born and raised in Shanghai, arguably the largest metropolitan city in China. By far my favorite city in the world, it boasts both traditional Chinese and distinctly European archiecture from the colonial times. It has great touristy attractions such as the Bund, the Oriental TV Tower, and it has amazing food from all over the world. I would highly recommend everyone to visit and please hit me up if you're there!", imageUrl: "Shanghai", credit: "Photo taken from: https://www.china-briefing.com/news/investing-in-shanghai-china-city-spotlight/", tag: 1),
        Page(name: "Culver, Indiana", description: "I went to high school for four years in Culver, a small town in the northwest corner of Indiana. Although the town situates itself in the middle of nowhere, the school I went to borders Lake Maxinkuckee (an actual lake which dwarfs Lake Lag). Over the summer, I like water skiing and sailing on the lake and during winter, it was a prime location for snow fights. If you ever happen to be in Indiana, make sure you check it out!", imageUrl: "Culver", credit: "", tag: 2),
        Page(name: "Paris, France", description: "I learned French for four years before coming to Stanford. This past winter break, I went to France for the first time. I took the photo here on top of the Eiffel Tower with a gorgeous sunset view. Despite only spending four days there, I really want to go back and spend time living there.", imageUrl: "Paris", credit: "", tag: 3),
    ]
}
