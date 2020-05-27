//
//  ListRow.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/27.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    @EnvironmentObject var favoriteArray: ObservedRGB
    var rValue: Int
    var gValue: Int
    var bValue: Int
    var body: some View {
        Text("\(String(rValue, radix: 16))\(String(gValue, radix: 16))\(String(bValue, radix: 16))")
            .frame(width: 300, height: 50)
            .background(Color.init(UIColor(rValue,gValue,bValue)))
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(rValue: 0, gValue: 0, bValue: 0)
    }
}
