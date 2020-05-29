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
        
        
        
            
                NavigationView{
                    
                   
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 8.0) {
                ForEach(0..<self.favoriteArray.rgbArray.count, id: \.self) { item in
                    
                    
                    ListRow(rValue: self.favoriteArray.rgbArray[item][0], gValue: self.favoriteArray.rgbArray[item][1], bValue: self.favoriteArray.rgbArray[item][2])
                        .navigationBarTitle("cliped",displayMode: .inline)
                }
                }
            
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
