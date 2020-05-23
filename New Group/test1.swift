//
//  test1.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/22.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI



struct test1: View {
    @State var input = ""
    @EnvironmentObject var observed : ObservedNumber
    
    var body: some View {
            NavigationView {
                VStack {
                        
                    TextField("入力するところ", text: $input)
                        .frame(width: 300)
                    Button("保存",action: {
                        self.observed.number1 = self.input
                    })
            NavigationLink(destination: test2()) {
                Text("移動")
            
            }
        }
    }
    }
    
}

struct test2: View {
    @EnvironmentObject var observed: ObservedNumber
    var body: some View {
        Text("アイウエオ\(observed.number1)")
    }
}



struct test1_Previews: PreviewProvider {
    static var previews: some View {
        
        test1().environmentObject(ObservedNumber())
        
    }
}
