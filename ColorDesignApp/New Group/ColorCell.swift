//
//  test12.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/26.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct ColorCellFeature {
    @ObservableState
    struct State {

        struct Element: Equatable, Identifiable {
            var red: Double
            var green: Double
            var blue: Double
            let id: UUID
        }
        var selection: Identified<Element.ID, ColorDetailFeature.State>
        var elements: IdentifiedArrayOf<Element> = [.init(red: 0, green: 0, blue: 0, id: UUID())]
    }

    enum Action {
        case colorDetail(ColorDetailFeature.Action)
        case setNavigation(selection: UUID)
    }
    
    var body: some ReducerOf<Self> {
        Reduce<State, Action> { state, action in
            switch action {
                case .colorDetail:
                    return .none

                case let .setNavigation(selection: id):
//                    state.selection.value = ColorDetailFeature.State(
//                        red: state.elements[id: id]?.red ?? 0,
//                        green: state.elements[id: id]?.green ?? 0,
//                        blue: state.elements[id: id]?.blue ?? 0
//                    )
                    return .none
            }
        }
    }

}
struct ColorCell: View {
    var body: some View {
        Rectangle()
            .frame(width: 30, height: 35)
//            .background(Color(red: store.detail.color.red/255,
//                              green: store.detail.color.green/255,
//                              blue: store.detail.color.blue/255))
            .cornerRadius(8)
            .shadow(color: Color.gray.opacity(0.7), radius: 5.0, x: 0.0, y: 0.0)
    }
}

#Preview {
    ColorCell()
}

