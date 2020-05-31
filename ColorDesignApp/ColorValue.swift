//
//  test10.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/25.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ColorValue: View {
    
    var colorArray: [[Int]]
    
    var body: some View {
      
        VStack {
             HStack {
                VStack(spacing: 5.0) {

                    Spacer()

                    ForEach(0..<colorArray.count, id: \.self){ j in
                        
                        ColorCell(rValue: self.colorArray[j][0], gValue: self.colorArray[j][1], bValue: self.colorArray[j][2])

                        
                     
                    }
                }
            }
        }
    }
}

struct ColorValue_Previews: PreviewProvider {
     static var previews: some View {
        ColorValue(colorArray: ColorDataR[0].v9)
    }
}
