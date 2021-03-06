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
        NavigationLink(destination: ColorSlider(R: Double(rValue), G: Double(gValue), B: Double(bValue))) {
            Text("")
        .frame(width: 30, height: 35)
            .background(Color.init(UIColor(rValue,gValue,bValue)))
           
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.7), radius: 5.0, x: 0.0, y: 0.0)
        }
    }
}

struct ColorCell_Previews: PreviewProvider {
    static var previews: some View {
        ColorCell(rValue: 0, gValue: 0, bValue: 0)
    }
}
