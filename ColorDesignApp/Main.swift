//
//  Main.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/21.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct Main: View {
    @EnvironmentObject var observedrgb: ObservedRGB
    var body: some View {
        NavigationView {
        ScrollView(.vertical) {
           Home(categoryName: ColorDataR[3].name, items: Array(ColorDataR.prefix(4)))
            Home(categoryName: ColorDataYR[3].name, items: Array(ColorDataYR.prefix(4)))
            Home(categoryName: ColorDataY[3].name, items: Array(ColorDataY.prefix(4)))
            Home(categoryName: ColorDataGY[3].name, items: Array(ColorDataGY.prefix(4)))
            Home(categoryName: ColorDataG[3].name, items: Array(ColorDataG.prefix(4)))
            Home(categoryName: ColorDataBG[3].name, items: Array(ColorDataBG.prefix(4)))
            Home(categoryName: ColorDataB[3].name, items: Array(ColorDataB.prefix(4)))
            Home(categoryName: ColorDataPB[3].name, items: Array(ColorDataPB.prefix(4)))
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main().environmentObject(ObservedRGB())
        
    }
}
