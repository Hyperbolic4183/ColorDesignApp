//
//  ListView.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/26.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct MainList: View {
    @EnvironmentObject var favoriteArray: ObservedRGB
    var body: some View {
        //var Rradix16:String = String(678,radix: 16)
        
//            ForEach(favoriteArray.rgbArray, id: \.self){ item in
//                Text("\(String(item[0],radix: 16))\(String(item[1],radix: 16))\(String(item[2],radix: 16))")
        List {
            ForEach(0..<self.favoriteArray.rgbArray.count) { item in
                
                ListRow(rValue: self.favoriteArray.rgbArray[item][0], gValue: self.favoriteArray.rgbArray[item][1], bValue: self.favoriteArray.rgbArray[item][2])
            }
        }
                
            
        
        
        
    }
}

struct MainList_Previews: PreviewProvider {
    static let favoriteArray = ObservedRGB()
    static var previews: some View {
        MainList().environmentObject(favoriteArray)
    }
}
