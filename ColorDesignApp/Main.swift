//
//  Main.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/21.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI



struct Main: View {
    @EnvironmentObject var favoriteArray: ObservedRGB
    init(){
        UITableView.appearance().backgroundColor = .white
        UITableViewCell.appearance().backgroundColor = .white
        UITableView.appearance().tableFooterView = UIView()
    }
    var body: some View {
        
        NavigationView {
            
      
        ScrollView(.vertical){
        ColorTableRow(categoryName: "R", items: Array(ColorDataR.prefix(4)))
    
            
        ColorTableRow(categoryName: "YR", items: Array(ColorDataYR.prefix(4)))
        ColorTableRow(categoryName: "Y", items: Array(ColorDataY.prefix(4)))
        ColorTableRow(categoryName: "GY", items: Array(ColorDataGY.prefix(4)))
        ColorTableRow(categoryName: "G", items: Array(ColorDataG.prefix(4)))
        ColorTableRow(categoryName: "BG", items: Array(ColorDataBG.prefix(4)))
        ColorTableRow(categoryName: "B", items: Array(ColorDataB.prefix(4)))
        ColorTableRow(categoryName: "PB", items: Array(ColorDataPB.prefix(4)))
            
            
       }.navigationBarTitle("Search",displayMode: .inline)
               
            
        
            
        }.onAppear {
            print("test onAppear")
            guard let defaultItem = UserDefaults.standard.array(forKey: "storedArray") as? [[Int]]
                else {
                    print("defaultItem is nil")
                    return }
                self.favoriteArray.rgbArray = defaultItem
        }
      
    }
}

struct Main_Previews: PreviewProvider {
    static let favoriteArray = ObservedRGB()
    static var previews: some View {
        Main().environmentObject(favoriteArray)
        
    }
}
