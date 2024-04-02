//
//  ColorMatrixGroupResponse.swift
//  ColorDesignApp
//
//  Created by 大塚 周 on 2024/04/02.
//  Copyright © 2024 大塚周. All rights reserved.
//

import Foundation

struct RGBResponse: Codable {
    var red: Int
    var green: Int
    var blue: Int

    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let array = try container.decode([Int].self)
        guard array.count == 3 else { fatalError() }
        red = array[0]
        green = array[1]
        blue = array[2]
    }
}

struct ColorMatrixResponse: Codable {
    var name: String
    var v9: [RGBResponse]
    var v8: [RGBResponse]
    var v7: [RGBResponse]
    var v6: [RGBResponse]
    var v5: [RGBResponse]
    var v4: [RGBResponse]
    var v3: [RGBResponse]
    var v2: [RGBResponse]
    var v1: [RGBResponse]
}
