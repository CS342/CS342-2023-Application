//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI

extension String {
    func isValidEmoji() -> Bool {
        let scalars = self.unicodeScalars
        for s in scalars {
            if (!s.properties.isEmoji || !s.properties.isEmojiPresentation) {
                return false
            }
        }
        return true
    }
    
    func image() -> UIImage? {
        
        guard self.count == 1 && self.isValidEmoji() else {
            return nil
        }
        let size: CGFloat = 100.0
        UIGraphicsBeginImageContextWithOptions(CGSize(width: size, height: size), false, 0)
        UIColor.clear.set()
        let rect = CGRect(origin: .zero, size: CGSize(width: size, height: size))
        UIRectFill(rect)
        let font = UIFont.systemFont(ofSize: size-10)
        (self as AnyObject).draw(in: rect, withAttributes: [.font: font])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

struct Hobby {
    var emojiStr: String
    var description: String
    
    var emojiImg: UIImage? {
        return emojiStr.image()
    }
}

struct HobbyView: View {
    var hobby: Hobby
    
    var body: some View {
        VStack(alignment: .leading) {
            if let img = hobby.emojiImg  {
                Image(uiImage: img)
                    .resizable()
                    .frame(width: 100, height: 100)
            } else {
                Rectangle()
                    .foregroundColor(Color.clear)
                    .frame(width: 100, height: 100)
            }
            
            Text(hobby.description)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}


struct HobbyView_Previews: PreviewProvider {
    static var previews: some View {
        HobbyView(hobby: getHobbies()[2])
    }
}
