//
//  TabView.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/26.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct Tab: View {
    @State private var selection = 0
    static let favoriteArray = ObservedRGB()
    var body: some View {
        
        TabView(selection: $selection) {
            Main().environmentObject(Tab.favoriteArray)
                
                .tabItem{
                    
                    VStack {
                    Image(systemName: "table")
                    
                        
                    }
            }.tag(0)
            
            MainList().environmentObject(Tab.favoriteArray)
                .tabItem{Image(systemName: "paperclip")}.tag(1)
            
            MainSlider(R: 0, G: 0, B: 0).environmentObject(Tab.favoriteArray)
                .tabItem{Image(systemName: "slider.horizontal.3")}.tag(2)
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
