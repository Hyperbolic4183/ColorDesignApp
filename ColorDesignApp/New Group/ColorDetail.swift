//
//  Picker.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/31.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct ColorDetailFeature {
    @ObservableState
    struct State: Equatable {
        var red: Int
        var green: Int
        var blue: Int
        var sliderRed: Double
        var sliderGreen: Double
        var sliderBlue: Double

        init(red: Int, green: Int, blue: Int) {
            self.red = red
            self.green = green
            self.blue = blue
            sliderRed = Double(red)
            sliderGreen = Double(green)
            sliderBlue = Double(blue)
        }
    }

    enum Action: BindableAction {
        case binding(BindingAction<State>)
        case storeButtonTapped
    }

    var body: some Reducer<State, Action> {
        BindingReducer()
        Reduce<State, Action> { state, action in
            switch action {
                case .binding:
                    return .none
                case .binding(\.sliderRed):
                    state.red = Int(state.sliderRed * 255)
                    return .none
                    
                case .binding(\.sliderGreen):
                    state.green = Int(state.sliderGreen * 255)
                    return .none

                case .binding(\.sliderBlue):
                    state.blue = Int(state.sliderBlue * 255)
                    return .none

                case .storeButtonTapped:
                    return .none
            }
        }
    }
}

struct ColorDetail: View {

    @Bindable var store: StoreOf<ColorDetailFeature>

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color(
                    red: store.sliderRed/255.0,
                    green: store.sliderGreen/255.0,
                    blue: store.sliderBlue/255.0))
                .cornerRadius(50)
                .shadow(color: Color.gray.opacity(0.7),
                        radius: 10.0,
                        x: 0.0,
                        y: 0.0)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .aspectRatio(16/9, contentMode: .fit)
            Group {
                HStack{
                    Circle()
                        .foregroundColor(.red)
                        .frame(width: 20, height: 20)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                    Text(String(Int(store.sliderRed))).frame(width: 40)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                    Slider(value: $store.sliderRed, in: 0...255, step: 1.0).frame(width: 200)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                }
                HStack{
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 20, height: 20)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                    Text(String(Int(store.sliderGreen))).frame(width: 40)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                    Slider(value: $store.sliderGreen, in: 0...255).frame(width: 200)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                }
                HStack{
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 20, height: 20)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                    Text(String(Int(store.sliderBlue))).frame(width: 40)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                    Slider(value: $store.sliderBlue, in: 0...255).frame(width: 200)
                        .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
                }
                .padding(.bottom, 40)
            }
            Button {
                // TODO: 永続化処理
            } label: {
                Text("保存する")
                    .frame(width: 300, height: 50)
                    //.background(Color.init(UIColor(226,233,243)))
                    .border(Color.gray, width: 2)
                    .cornerRadius(10)
                    .shadow(color: Color.gray.opacity(0.7), radius: 10.0, x: 0.0, y: 0.0)
            }
        }
        .padding(.vertical, 40)
        .padding(.horizontal, 20)
        .background(Color(UIColor.secondarySystemBackground))
    }
}

#Preview {
    NavigationView {
        ColorDetail(store: Store(initialState: ColorDetailFeature.State(red: 100, green: 240, blue: 150),
                                 reducer: {
            ColorDetailFeature()
        }))
    }
}
