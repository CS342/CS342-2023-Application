//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import SwiftUI


struct Hobby {
    var emojiStr: String
    var description: String
    
    var emojiImg: UIImage? {
        let img = emojiStr.image()
        return img
    }
}

struct HobbyView: View {
    var hobby: Hobby
    
    var body: some View {
        VStack(alignment: .leading) {
            if let img = hobby.emojiImg {
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

extension String {
    func isValidEmoji() -> Bool {
        let scalars = self.unicodeScalars
        for scalar in scalars where !scalar.properties.isEmoji || !scalar.properties.isEmojiPresentation {
            return false
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
        let font = UIFont.systemFont(ofSize: size - 10)
        (self as AnyObject).draw(in: rect, withAttributes: [.font: font])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

struct HobbyView_Previews: PreviewProvider {
    static var previews: some View {
        HobbyView(hobby: getHobbies()[2])
    }
}
