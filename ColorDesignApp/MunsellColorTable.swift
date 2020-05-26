//MunsellColorTable .swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/25.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct MunsellColorTable: View {
    var colorData: colorData
    var body: some View {
        
        
        VStack {
        HStack {
        ColorValue(colorArray: colorData.v9)
        ColorValue(colorArray: colorData.v8)
        ColorValue(colorArray: colorData.v7)
        ColorValue(colorArray: colorData.v6)
        ColorValue(colorArray: colorData.v5)
        ColorValue(colorArray: colorData.v4)
        ColorValue(colorArray: colorData.v3)
        ColorValue(colorArray: colorData.v2)
        ColorValue(colorArray: colorData.v1)
            
        }
    }
    }
}

struct MunsellColorTable_Previews: PreviewProvider {
    static var previews: some View {
        MunsellColorTable(colorData: ColorDataR[0])
    }
}
