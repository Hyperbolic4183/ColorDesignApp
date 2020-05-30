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
    func judgeColorNumber (r:Int,g:Int,b:Int) -> Double {
        return Double(r)*0.299+Double(g)*0.587+Double(b)*0.114
    }
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
                
                Group {
                       if self.judgeColorNumber(r: self.r, g: self.g, b: self.b) < 186{
                           Text("\(String(self.r, radix: 16))\(String(self.g, radix: 16))\(String(self.b, radix: 16))")

                           .foregroundColor(Color.white)
                           .fontWeight(.semibold)
                           .frame(width: 300, height: 50)
                           .background(Color.init(UIColor(self.r,self.g,self.b)))
                            .cornerRadius(10)
                       } else {
                           Text("\(String(self.r, radix: 16))\(String(self.g, radix: 16))\(String(self.b, radix: 16))")

                           .foregroundColor(Color.black)
                           .fontWeight(.semibold)
                           .frame(width: 300, height: 50)
                           .background(Color.init(UIColor(self.r,self.g,self.b)))
                            .cornerRadius(10)
                           }
                       }
                                
                
                
                    Spacer()
            
            Button(action: {
                print("tapped")
                self.favoriteArray.rgbArray.append([self.r,self.g,self.b])
                UserDefaults.standard.set(self.favoriteArray.rgbArray, forKey: "storedArray")
                
        
                
                
            }){
                
                Text("保存する")
                .frame(width: 300, height: 50)
                    .background(Color.init(UIColor(226,233,243)))
                    
                .border(Color.gray, width: 2)
                    
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
        ColorDetail(r: 3,g:12,b:21)
    }
}
