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
            ZStack {
            
            //
            GeometryReader { fullView in
            ScrollView(.horizontal, showsIndicators: false) {
                 
                HStack(alignment: .top, spacing: 0) {
                    
                    ForEach(self.items) { colordata in
                        GeometryReader { geo in
                        NavigationLink(destination: MunsellColorTable(colorData: colordata)){
                            CategoryItem(colorData: colordata)
                            .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).midX - fullView.size.width / 2) / 5), axis: (x: 0, y: 1, z: 0))
                            }
                        }
                        .frame(width: 150)
                    }
            }
                    
                    //.padding(.horizontal, (fullView.size.width - 150)/2)
                    .padding(.init(top: 0, leading: (fullView.size.width - 150) / 2, bottom: 0, trailing: 0))
               .buttonStyle(PlainButtonStyle())
        }
            .frame(height: 180)
    }
                HStack {
                    Text(self.categoryName)
                    .font(.headline)
                    .padding(.leading, 15)
                        .padding(.top, 5)
                    Spacer()
                }
           
            
            
        }.frame(height: 180)
}
    }
}
struct CategoryItem: View {
    var colorData: colorData
    var body: some View {
      
        VStack {
            Spacer()
            colorData.image
            .resizable()
            .frame(width: 150, height: 150)
            .cornerRadius(10)
            Spacer()

        }//.padding(.init(top: 30, leading: 0, bottom: 30, trailing: 0))
            
        .compositingGroup()
        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
    }
}



struct ColorTableRow_Previews: PreviewProvider {
    static var previews: some View {
        ColorTableRow(categoryName: ColorDataR[0].name, items: Array(ColorDataG.prefix(4)))
        
        
    }
}

