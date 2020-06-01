//
//  SaveButton.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/31.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct SaveButton: View {
    var R: Int
    var G: Int
    var B: Int
    @EnvironmentObject var favoriteArray: ObservedRGB
    var body: some View {
    //    GeometryReader { geometry in
        Button(action: {
                print("tapped")
                self.favoriteArray.rgbArray.append([self.R,self.G,self.B])
                UserDefaults.standard.set(self.favoriteArray.rgbArray, forKey: "storedArray")

            }){
                
                Text("保存する")
                .frame(width: 300, height: 50)
                    .background(Color.init(UIColor(226,233,243)))
                    
                .border(Color.gray, width: 2)
                .cornerRadius(10)
                .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
           // }
            }
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton(R: 0, G: 0, B: 0)
    }
}
