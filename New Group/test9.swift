//
//  test9.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/24.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct test9: View {
    var r:Int
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("\(r)")
        }
        
    }
}

struct test9_Previews: PreviewProvider {
    static var previews: some View {
        test9(r: 3)
    }
}
