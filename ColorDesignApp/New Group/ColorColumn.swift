//
//  ColorColumn.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/25.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct ColorColumnFeature {
    @ObservableState
    struct State: Equatable {

        struct Element: Equatable, Identifiable {
            var red: Int
            var green: Int
            var blue: Int
            let id: UUID
        }

        var selection: Identified<Element.ID, ColorDetailFeature.State?>?
        var elements: IdentifiedArrayOf<Element>

        init(rgbArray: [RGB]) {
            elements = []
            rgbArray.forEach { rgb in
                elements.append(.init(red: rgb.red, green: rgb.green, blue: rgb.blue, id: UUID()))
            }
        }
    }

    enum Action {
        case colorDetail(ColorDetailFeature.Action)
        case setNavigation(selection: UUID?)
        case setNavigationCompleted
    }

    var body: some ReducerOf<Self> {
        Reduce<State, Action> { state, action in
            switch action {

                case .colorDetail:
                    return .none

                case .setNavigation(selection: .none):
                    if let selection = state.selection,
                       let red = selection.value?.red,
                       let green = selection.value?.green,
                       let blue = selection.value?.blue {
                        state.elements[id: selection.id]?.red = red
                        state.elements[id: selection.id]?.green = green
                        state.elements[id: selection.id]?.blue = blue
                    }
                    state.selection = nil
                    return .none

                case let .setNavigation(selection: .some(id)):
                    state.selection = Identified(nil, id: id)
                    return .send(.setNavigationCompleted)

                case .setNavigationCompleted:
                    guard let id = state.selection?.id,
                          let element = state.elements[id: id] else { return .none }
                    state.selection?.value = ColorDetailFeature.State(red: element.red,
                                                                      green: element.green,
                                                                      blue: element.blue)
                    return .none
            }
        }
        .ifLet(\.selection, action: \.colorDetail) {
            EmptyReducer()
                .ifLet(\.value, action: \.self) {
                    ColorDetailFeature()
                }
        }
    }

}

struct ColorColumnView: View {

    @Bindable var store: StoreOf<ColorColumnFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Spacer()
                ForEach(store.elements) { element in
                    NavigationLink(tag: element.id,
                                   selection: viewStore.binding(get: \.selection?.id,
                                                                send: { .setNavigation(selection: $0) })) {
                        IfLetStore(store.scope(state: \.selection?.value, action: \.colorDetail)) {
                            ColorDetail(store: $0)
                        } else: {
                            Text("nothing!")
                        }
                    } label: {
                        Rectangle()
                            .fill(Color(red: Double(element.red)/255.0,
                                        green: Double(element.green)/255.0,
                                        blue: Double(element.blue)/255.0))
                            .frame(width: 30, height: 30)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ColorColumnView(store: Store(initialState: ColorColumnFeature.State(rgbArray: [.init(red: 43, green: 12, blue: 132),
                                                                                       .init(red: 52, green: 233, blue: 122)]), reducer: {
            ColorColumnFeature()
        }))
    }
}
