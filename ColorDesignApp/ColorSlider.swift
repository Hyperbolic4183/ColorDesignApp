//
//  ColorSlider.swift
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
    var body: some View {
       
        VStack{
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
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(R: 12, G: 12, B: 12)
    }
}
