//
//  Main.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/21.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI



struct Main: View {
  
    var body: some View {
        NavigationView {
       List{

        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataR.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataYR.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataY.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataGY.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataG.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataBG.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataB.prefix(4)))
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataPB.prefix(4)))
        
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
        
    }
}
