//
//  Picker.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/31.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ColorSlider: View {
    @State var R:Double
    @State var G:Double
    @State var B:Double
    func judgeColorNumber (r:Int,g:Int,b:Int) -> Double {
        return Double(r)*0.299+Double(g)*0.587+Double(b)*0.114
    }
    var body: some View {
        
        VStack {
           Spacer()
            RGBRectangle(R: Int(self.R), G: Int(self.G), B: Int(self.B))
    Spacer()
            ListRow(rValue: Int(self.R), gValue: Int(self.G), bValue: Int(self.B))
             Spacer()
            Group {
            HStack{
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 20, height: 20)
                Text(String(Int(self.R))).frame(width: 40)
                Slider(value: self.$R, in: 0...255).frame(width: 200)
            }
            HStack{
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 20, height: 20)
                Text(String(Int(self.G))).frame(width: 40)
                Slider(value: self.$G, in: 0...255).frame(width: 200)
            }
            HStack{
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 20, height: 20)
                Text(String(Int(self.B))).frame(width: 40)
                Slider(value: self.$B, in: 0...255).frame(width: 200)
            }
            }.shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
            Spacer()
            SaveButton(R: Int(R), G: Int(G), B: Int(B))
            Spacer()
            }
        
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(R: 0, G: 0, B: 0)
    }
}
