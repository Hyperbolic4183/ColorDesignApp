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
        ZStack {
            Color.white
            .edgesIgnoringSafeArea(.all)
        VStack(alignment: .leading, spacing: 0) {
            
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
            .frame(height: 220)
    }
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
            .frame(width: 150, height: 150)
            .cornerRadius(10)
        
    
            Text(colorData.name)
            .foregroundColor(.primary)
            .font(.caption)
        }.padding(.leading, 20)
        .compositingGroup()
        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
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

