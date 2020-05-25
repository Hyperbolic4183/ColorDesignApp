//
//  test4.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/24.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct test4: View {
    @State var i = 0
    var body: some View {
        NavigationView {
        NavigationLink(destination: test5()) {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
struct test5: View {
    @State var i = 0
    var body: some View {
        Text("aa")
    }
}

struct test4_Previews: PreviewProvider {
    static var previews: some View {
        test4()
    }
}
