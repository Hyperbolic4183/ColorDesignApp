//
//  ListRow.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/27.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    
    var rValue: Int
    var gValue: Int
    var bValue: Int
    
    

    var body: some View {
    //    GeometryReader{ bodyView in
            
            Text("\(String(self.rValue, radix: 16))\(String(self.gValue, radix: 16))\(String(self.bValue, radix: 16))")
                .frame(width: /*bodyView.size.width*/300, height: 50)
                .background(Color.init(UIColor(self.rValue,self.gValue,self.bValue)))
            .cornerRadius(10)
                //Spacer()
            
        //}
    }
}

struct ListRow_Previews: PreviewProvider {
    static let favoriteArray = ObservedRGB()
    static var previews: some View {
        ListRow(rValue: 1, gValue: 0, bValue: 0)
    }
}
