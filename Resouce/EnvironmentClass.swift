//
//  EnvironmentClass.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/23.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI

class ObservedRGB: ObservableObject {
    @Published var red = 0
    @Published var green = 0
    @Published var blue = 0
    @Published var rgbArray: [[Int]] = []
}


