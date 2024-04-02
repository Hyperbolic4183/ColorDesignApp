//
//  ColorRowView.swift
//  ColorDesignApp
//
//  Created by 大塚 周 on 2024/04/01.
//  Copyright © 2024 大塚周. All rights reserved.
//

import SwiftUI
import Foundation
import ComposableArchitecture

//@DependencyClient
//struct FactClient {
//    var fetch: @Sendable (String) async throws -> [ColorData]
//}
//
//extension DependencyValues {
//    var factClient: FactClient {
//        get { self[FactClient.self] }
//        set { self[FactClient.self] = newValue }
//    }
//}
//
//extension FactClient: DependencyKey {
//    static let liveValue = Self(
//        fetch: { filename in
//            return load(filename)
//        }
//    )
//}

struct RGB: Equatable, Identifiable {
    let red: Int
    let green: Int
    let blue: Int
    var id: String {
        red.description + green.description + blue.description
    }
}

struct ColorMatrix: Equatable {
    let name: String
    let v9: [RGB]
    let v8: [RGB]
    let v7: [RGB]
    let v6: [RGB]
    let v5: [RGB]
    let v4: [RGB]
    let v3: [RGB]
    let v2: [RGB]
    let v1: [RGB]

    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.name == rhs.name
    }
}


@Reducer
struct ColorMatrixGroupFeature {

    @ObservableState
    struct State: Equatable {
        struct Column: Equatable, Identifiable {
            let id: UUID
            let colorMatrix: ColorMatrix
        }

        var selection: Identified<Column.ID, ColorColumnFeature.State?>?
        var columns: IdentifiedArrayOf<Column>
    }

    enum Action {
        case colorMatrix(ColorColumnFeature.Action)
        case setNavigation(selection: UUID?)
        case setNavigationCompleted
    }

    var body: some ReducerOf<Self> {
        Reduce<State, Action> { state, action in
            switch action {

                case .colorMatrix:
                    return .none

                case .setNavigation(selection: .none):
                    state.selection = nil
                    return .none

                case let .setNavigation(selection: .some(id)):
                    state.selection = Identified(nil, id: id)
                    return .send(.setNavigationCompleted)

                case .setNavigationCompleted:
                    guard let id = state.selection?.id,
                          let column = state.columns[id: id] else { return .none }

                    return .none

            }
        }
    }
}

struct ColorRowView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


