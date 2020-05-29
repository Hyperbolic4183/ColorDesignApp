//
//  EnvironmentClass.swift
//  ColorDesignApp
//
//  Created by 大塚周 on 2020/05/23.
//  Copyright © 2020 大塚周. All rights reserved.
//

import SwiftUI




class ObservedRGB: ObservableObject {
 
    @Published var rgbArray = [[Int]]()
   
}


//@propertyWrapper
//struct UserDefault<T> {
//    let key: String
//    let defaultValue: T
//    var wrappedValue: T {
//        get {
//            return UserDefaults.standard.array(forKey: key) as? T ?? defaultValue 
//        }
//        set {
//            UserDefaults.standard.set(newValue, forKey: key)
//        }
//    }
//}


