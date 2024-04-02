//
//  TabView.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/26.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI
import ComposableArchitecture
struct Tab: View {
    @State private var selection = 0
    static let favoriteArray = ObservedRGB()
    var body: some View {
        NavigationView {
            ColorColumnView(store: Store(initialState: ColorColumnFeature.State(rgbArray: [.init(red: 43, green: 12, blue: 132),
                                                                                           .init(red: 52, green: 233, blue: 122)]), reducer: {
                ColorColumnFeature()
            }))
        }
//        TabView(selection: $selection) {
//            MainTable().environmentObject(Tab.favoriteArray)
//            .tabItem{ Image(systemName: "table") }
//            .tag(0)
//            NavigationView {
//                ColorMatrix(store: Store(initialState: ColorMatrixFeature.State(), reducer: {
//                    ColorMatrixFeature()
//                }))
//            }
//            .tabItem { Image(systemName: "table") }
//            .tag(0)

//            MainList().environmentObject(Tab.favoriteArray)
//                .tabItem{ Image(systemName: "paperclip") }
//                .tag(2)


            
 //       }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
