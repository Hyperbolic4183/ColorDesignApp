//
//  test3.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/24.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct test3: View {
    @State var mfgs:[String] = []
    @State var new = ""
    var body: some View {
        VStack {
        VStack(alignment: .leading) {
            Text("Add new manufacturing")
                .font(.footnote)
                .foregroundColor(.secondary)
            HStack {
                TextField("Input new", text: $new)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    self.mfgs.append(self.new)
                    self.new = ""
                }) {
                    Text("Add")
                    .buttonStyle(BorderlessButtonStyle())
                }
            }
        }.padding([.leading,.trailing])
        List {
            ForEach(mfgs, id: \.self){ user in
                Text(user)
         }
        }
      }
    }
}

struct test3_Previews: PreviewProvider {
    static var previews: some View {
        test3()
    }
}
