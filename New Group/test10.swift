//
//  test10.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/25.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct test10: View {
    
    var colorArray: [[Int]]
    var body: some View {
      
        VStack {
             HStack {
                VStack(spacing: 5.0) {

                    Spacer()

                    ForEach(0..<colorArray.count){ j in
                            NavigationLink(destination: test9(r: self.colorArray[j][0]) ){
                        Text(" ")
                            .frame(width: 30, height: 50)
                            .background(Color.init(UIColor(self.colorArray[j][0],self.colorArray[j][1],self.colorArray[j][2])))
                        
                     }
                    }
                }
            }
        }
    }
}

struct test10_Previews: PreviewProvider {
     static var previews: some View {
        test10(colorArray: ColorDataR[0].v9)
    }
}
