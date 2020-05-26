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
        List {
            ForEach(favoriteArray.rgbArray, id: \.self){ item in
                Text("R値は\(item[0])B値は\(item[1])G値は\(item[2])")
                
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
