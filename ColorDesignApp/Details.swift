//
//  Details.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/22.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct Details: View {
    @EnvironmentObject var observedrgb: ObservedRGB
    var body: some View {
        GeometryReader{ bodyView in
        VStack {
            
            Text("")
                .frame(width: bodyView.size.width, height: bodyView.size.width)
                .background(Color.init(UIColor(self.observedrgb.red,self.observedrgb.green,self.observedrgb.blue)))
            
            HStack {
                Text("R値は\(self.observedrgb.red)")
            
            Text("G値は\(self.observedrgb.green)")
            Text("B値は\(self.observedrgb.blue)")
              }
            }
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details().environmentObject(ObservedRGB())
    }
}
