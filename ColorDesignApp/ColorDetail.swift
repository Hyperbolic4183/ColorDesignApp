//
//  test9.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/24.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ColorDetail: View {
    var r:Int
    var g:Int
    var b:Int
    var body: some View {
        GeometryReader{ bodyView in
        VStack {
             Text("")
           .frame(width: bodyView.size.width, height: bodyView.size.width)
                .background(Color.init(UIColor(self.r,self.g,self.b)))
        }
        }
    }
}


extension UIColor {

    convenience init(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Int = 255) {
        let rgba = [red, green, blue, alpha].map { i -> CGFloat in
            switch i {
            case let i where i < 0:
                return 0
            case let i where i > 255:
                return 1
            default:
                return CGFloat(i) / 255
            }
        }
        self.init(red: rgba[0], green: rgba[1], blue: rgba[2], alpha: rgba[3])
    }
}

struct ColorDetail_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetail(r: 3,g:12,b:21)
    }
}
