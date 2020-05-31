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
    
    @EnvironmentObject var favoriteArray: ObservedRGB
//    func judgeColorNumber (r:Int,g:Int,b:Int) -> Double {
//        return Double(r)*0.299+Double(g)*0.587+Double(b)*0.114
//    }
    var userDefaults = UserDefaults.standard
    
    var body: some View {
        
        GeometryReader{ bodyView in
        VStack {
            RGBRectangle(R: Int(self.r), G: Int(self.g), B: Int(self.b))
            
            ListRow(rValue: self.r, gValue: self.g, bValue: self.b)
                .offset(y: 50)
                                
                    Spacer()
            
            SaveButton(R: Int(self.r), G: Int(self.g), B: Int(self.b))
            
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
    static let favoriteArray = ObservedRGB()
    static var previews: some View {
        ColorDetail(r: 33,g:124,b:21)
    }
}
