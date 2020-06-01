//
//  GradiationSet.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/06/01.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct GradiationSet: View {
    @State private var showingAlert = false
   // let a = UIPasteboard.general
    var body: some View {
        
        VStack {
            
            Button("タップしてね")
                
                
            {

                UIPasteboard.general.string = "aaaa"
                self.showingAlert = true
                
                // ②タップされたら表示フラグをtrueにする
            }.frame(width: 303, height: 50)
            .foregroundColor(Color.white)
            
            .background(Color.red)
                
            .alert(isPresented: $showingAlert) {  // ③アラートの表示条件設定
                Alert(title: Text("タイトル"))     // ④アラートの定義
            }
            
        }
    }
}

struct GradiationSet_Previews: PreviewProvider {
    static var previews: some View {
        GradiationSet()
    }
}

