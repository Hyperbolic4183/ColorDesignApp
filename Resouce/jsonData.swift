//
//  SwiftUIView.swift
//  Color Paret
//
//  Created by 大塚周 on 2020/05/16.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

struct colorData: Hashable, Codable, Identifiable {
    var name: String
    fileprivate var imageName: String
    var id: Int
    var v9: [[Int]]
    var v8: [[Int]]
    var v7: [[Int]]
    var v6: [[Int]]
    var v5: [[Int]]
    var v4: [[Int]]
    var v3: [[Int]]
    var v2: [[Int]]
    var v1: [[Int]]
}

extension colorData {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

