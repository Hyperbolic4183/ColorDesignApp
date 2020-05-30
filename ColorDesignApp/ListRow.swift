//
//  ListRow.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/27.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    
    var rValue: Int
    var gValue: Int
    var bValue: Int
    func judgeColorNumber (r:Int,g:Int,b:Int) -> Double {
        return Double(r)*0.299+Double(g)*0.587+Double(b)*0.114
    }
    

    var body: some View {
        
        VStack {
            Spacer()
            Spacer()
        Group {
        if self.judgeColorNumber(r: self.rValue, g: self.gValue, b: self.bValue) < 186{
            Text("\(String(self.rValue, radix: 16))\(String(self.gValue, radix: 16))\(String(self.bValue, radix: 16))")

            .foregroundColor(Color.white)
            .fontWeight(.semibold)
            .frame(width: 300, height: 50)
            .background(Color.init(UIColor(self.rValue,self.gValue,self.bValue)))
             .cornerRadius(10)
        } else {
            Text("\(String(self.rValue, radix: 16))\(String(self.gValue, radix: 16))\(String(self.bValue, radix: 16))")

            .foregroundColor(Color.black)
            .fontWeight(.semibold)
            .frame(width: 300, height: 50)
            .background(Color.init(UIColor(self.rValue,self.gValue,self.bValue)))
             .cornerRadius(10)
           
            }
        }
            Spacer()
            Spacer()
            
        }
        .frame(width: 500)
        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
    
    }
}

struct ListRow_Previews: PreviewProvider {
    static let favoriteArray = ObservedRGB()
    static var previews: some View {
        ListRow(rValue: 132, gValue: 30, bValue: 120)
    }
}
