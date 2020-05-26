//
//  test12.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/26.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ColorCell: View {
    var rValue: Int
    var gValue: Int
    var bValue: Int
    var body: some View {
        NavigationLink(destination: ColorDetail(r: rValue, g: gValue, b: bValue)) {
            Text(" ")
        .frame(width: 30, height: 50)
        .background(Color.init(UIColor(rValue,gValue,bValue)))
        }
    }
}

struct ColorCell_Previews: PreviewProvider {
    static var previews: some View {
        ColorCell(rValue: 0, gValue: 0, bValue: 0)
    }
}
