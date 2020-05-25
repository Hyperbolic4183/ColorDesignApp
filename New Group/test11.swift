//
//  test11.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/25.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct test11: View {
    var body: some View {
        NavigationView {
        
        HStack {
        test10( colorArray: ColorDataR[1].v9)
        test10(colorArray: ColorDataR[1].v8)
        test10(colorArray: ColorDataR[1].v7)
        test10(colorArray: ColorDataR[1].v6)
        test10(colorArray: ColorDataR[1].v5)
        test10(colorArray: ColorDataR[1].v4)
        test10(colorArray: ColorDataR[1].v3)
        test10(colorArray: ColorDataR[1].v2)
        test10(colorArray: ColorDataR[1].v1)

        }
    }
    }
}

struct test11_Previews: PreviewProvider {
    static var previews: some View {
        test11()
    }
}
