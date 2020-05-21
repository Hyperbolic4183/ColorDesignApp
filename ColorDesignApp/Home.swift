//
//  CategoryRow.swift
//  Color Paret
//
//  Created by 大塚周 on 2020/05/18.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct Home: View {
    var categoryName: String
    var items: [colorData]
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.items) { colordata in
                        CategoryItem(colorData: colordata)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryItem: View {
    var colorData: colorData
    var body: some View {
        VStack(alignment: .leading) {
            colorData.image
            .resizable()
                .frame(width: 155, height: 155)
            .cornerRadius(5)
            Text(colorData.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(categoryName: ColorDataY[3].name, items: Array(ColorDataY.prefix(4)))
        
    }
}

