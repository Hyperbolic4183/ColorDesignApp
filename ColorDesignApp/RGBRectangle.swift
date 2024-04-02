//
//  test19.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/31.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct RGBRectangle: View {

    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double

    var body: some View {
        Rectangle()
            .fill(Color(red: red, green: green, blue: blue))
            .cornerRadius(50)
            .shadow(color: Color.gray.opacity(0.7),
                    radius: 10.0,
                    x: 0.0,
                    y: 0.0)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .aspectRatio(16/9, contentMode: .fit)
    }
}

#Preview {
    RGBRectangle(red: .constant(0), green: .constant(0), blue: .constant(0))
}
