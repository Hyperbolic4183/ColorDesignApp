//
//  CategoryRow.swift
//  Color Paret
//
//  Created by 大塚周 on 2020/05/18.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ColorTableRow: View {
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
                        NavigationLink(destination: MunsellColorTable(colorData: colordata)){
                            CategoryItem(colorData: colordata)
                    
                        }
                
            }
               .buttonStyle(PlainButtonStyle())
        }
            .frame(height: 185)
    }

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
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
        .compositingGroup()        // Viewの要素をグループ化
        .shadow(color: .gray, radius: 3, x: 10, y: 10)
    }
}

struct secondView: View {
    var body: some View {
        Text("hello")
    }
}

struct ColorTableRow_Previews: PreviewProvider {
    static var previews: some View {
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataG.prefix(4)))
        
        
    }
}

