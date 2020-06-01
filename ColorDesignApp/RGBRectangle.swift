//
//  test19.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/31.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI


struct RGBRectangle: View {
    var R:Int
    var G:Int
    var B:Int
    var body: some View {
     //   GeometryReader { geometry in
        Rectangle()
        .frame(width: 300, height: 250)
             .foregroundColor(Color.init(UIColor(self.R,self.G,self.B)))
             .cornerRadius(50)
             .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
             
       // }
    }
}

struct test19_Previews: PreviewProvider {
    static var previews: some View {
        RGBRectangle(R: 0, G: 0, B: 0)
    }
}
