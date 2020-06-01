//
//  Gradation.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/30.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI




struct Gradation: View {
    private func gradiateColor() -> LinearGradient {
        // 左上から右下にポイントを設定する。
        let start = UnitPoint.init(x: 0.5, y:0) // 左上(始点)
        let end = UnitPoint.init(x: 0.5, y: 1) // 右下(終点)

        // 「Color」は以前の「UIColor」からの変換もできるぞ！ 助かる。
        let colors = Gradient(colors: [Color.init(UIColor(13,121,144)), Color(UIColor.green)])

        let gradientColor = LinearGradient(gradient: colors, startPoint: start, endPoint: end)

        return gradientColor
    }
    var body: some View {
        VStack {
            GeometryReader{ bodyView in

            ZStack {
                
                self.gradiateColor().edgesIgnoringSafeArea(.all)
                    .frame(width: bodyView.size.width-50, height: bodyView.size.width-50)
                
                .cornerRadius(50)
                }
            }
            
        }
    }
}

struct Gradation_Previews: PreviewProvider {
    static var previews: some View {
        Gradation()
    }
}
