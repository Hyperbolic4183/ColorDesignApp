//
//  ListView.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/26.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

// Text(self.radixJudge(n: self.rValue)+(self.radixJudge(n: self.gValue))+(self.radixJudge(n: self.bValue))).frame(width: 300, height: 50)

struct MainList: View {
    @EnvironmentObject var favoriteArray: ObservedRGB
    private func reversedFavoriteArray (arr: [[Int]]) -> [[Int]] {
        
        return arr.reversed()
    }
    
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators: false) {
        
        
            
            Spacer()
            VStack(spacing: 10){
                ForEach(0..<self.favoriteArray.rgbArray.count, id: \.self) { item in

                    ListRow(rValue: self.reversedFavoriteArray(arr: self.favoriteArray.rgbArray)[item][0], gValue: self.reversedFavoriteArray(arr: self.favoriteArray.rgbArray)[item][1], bValue: self.reversedFavoriteArray(arr: self.favoriteArray.rgbArray)[item][2])
                }
                
            }
                    
                    }.navigationBarTitle("Clipped",displayMode: .inline)
        }
    }
}
    

struct MainList_Previews: PreviewProvider {
    static let favoriteArray = ObservedRGB()
    static var previews: some View {
        MainList().environmentObject(favoriteArray)
    }
}
