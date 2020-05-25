//
//  Details.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/22.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct Details: View {
    
//     var rValue: Int
//     var gValue: Int
//     var bValue: Int
    var body: some View {
        GeometryReader{ bodyView in
        VStack {
            
            Text("")
                .frame(width: bodyView.size.width, height: bodyView.size.width)
              
            
          //  HStack {
           //     Text("R値は\(self.rValue)")
            
        //    Text("G値は\(self.gValue)")
       //     Text("B値は\(self.bValue)")
                
 //             }
//            Button(action: {
//                self.observedrgb.rgbArray.append([self.observedrgb.red,self.observedrgb.green,self.observedrgb.blue])
//                print("保存しました")
//
//            }){
                Text("保存する")
            }
            }
        }
    }
//}

//struct Details_Previews: PreviewProvider {
//    static var previews: some View {
//        Details(rValue: 0, gValue: 0, bValue: 0).environmentObject(ObservedRGB())
//    }
//}
