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
        VStack {
            Text("a")
            Text("Hello World")
            Text("\(self.observedrgb.red)")
            Text("\(self.observedrgb.green)")
            Text("\(self.observedrgb.blue)")
        }
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details().environmentObject(ObservedRGB())
    }
}
