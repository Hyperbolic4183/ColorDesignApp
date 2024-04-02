//
//  ColorMatrix.swift
//  ColorDesignApp
//
//  Created by 大塚 周 on 2024/04/02.
//  Copyright © 2024 大塚周. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

struct ColorColumn: Identifiable {
    var rgb: [RGB]
    var id = UUID()
}

@Reducer
struct ColorMatrixFeature {
    @ObservableState
    struct State {
        var colorMatrix: [ColorColumn]
    }

    enum Action {
        
    }


}


struct ColorMatrixView: View {

    let store: StoreOf<ColorMatrixFeature>

    var body: some View {
        HStack {
            ForEach(store.colorMatrix) { colorColumn in
                ColorColumnView(store: Store(initialState: ColorColumnFeature.State(rgbArray: colorColumn.rgb),
                                             reducer: {
                    ColorColumnFeature()
                }))
            }
            Spacer()
        }
    }
}


#Preview {
    NavigationView {
        ColorMatrixView(store: Store(initialState: ColorMatrixFeature.State(
            colorMatrix: [.init(rgb: [.init(red: 12, green: 120, blue: 200), .init(red: 0, green: 200, blue: 100)]),
                          .init(rgb: [.init(red: 199, green: 9, blue: 29)])
            ]), reducer: {
                ColorMatrixFeature()
            }))
    }
}
