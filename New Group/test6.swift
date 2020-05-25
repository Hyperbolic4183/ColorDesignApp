//
//  test6.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/24.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

fileprivate
struct ContentView: View {
    @State var order = ""
    var body: some View {
        NavigationView{
            VStack {
                Text(order)
                NavigationLink(destination: InputTextView(text: $order)) {
                    Text("入力")
                }
            }
        }
    }
}
fileprivate
struct InputTextView: View {
    @Binding var text: String
    var body: some View {
        TextField("ここに入力", text: $text)
            .padding()
            .textFieldStyle(
            RoundedBorderTextFieldStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
