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
    
    var userDefaults = UserDefaults.standard
    
    var body: some View {
        
        GeometryReader{ bodyView in
        VStack {
            Spacer()
             Text("")
           .frame(width: bodyView.size.width-50, height: bodyView.size.width-50)
                .background(Color.init(UIColor(self.r,self.g,self.b)))
                .cornerRadius(50)
            Spacer()
                HStack {
                    
                    VStack {
                Text("R値は\(self.r)")
                Text("G値は\(self.g)")
                Text("B値は\(self.b)")
                        
                }
                    Spacer()
            }
            Button(action: {
                print("tapped")
                self.favoriteArray.rgbArray.append([self.r,self.g,self.b])
                UserDefaults.standard.set(self.favoriteArray.rgbArray, forKey: "storedArray")
                
        
                
                
            }){
                Text("保存する")
                    .frame(width: 300, height: 50)
                    .background(Color.gray)
                .cornerRadius(10)
            
            }
            
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
        ColorDetail(r: 3,g:12,b:21).environmentObject(favoriteArray)
    }
}
