//
//  landmarkData.swift
//  Color Paret
//
//  Created by 大塚周 on 2020/05/16.
//  Copyright © 2020 大塚周. All rights reserved.
//
import Foundation
import SwiftUI
import UIKit

let ColorDataR: [ColorData] = load("R.json")
let ColorDataYR: [ColorData] = load("YR.json")
let ColorDataY: [ColorData] = load("Y.json")
let ColorDataGY: [ColorData] = load("GY.json")
let ColorDataG: [ColorData] = load("G.json")
let ColorDataBG: [ColorData] = load("BG.json")
let ColorDataB: [ColorData] = load("B.json")
let ColorDataPB: [ColorData] = load("PB.json")

let colorDataArray: [String:[ColorData]] = [
    "R":ColorDataR,
    "YR":ColorDataYR,
    "Y":ColorDataY,
    "GY":ColorDataGY,
    "G":ColorDataG,
    "BG":ColorDataBG,
    "B":ColorDataB,
    "PB":ColorDataPB
]

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ImageStore {
    typealias _ImageDictionary = [String: CGImage]
    fileprivate var images: _ImageDictionary = [:]

    fileprivate static var scale = 2
    
    static var shared = ImageStore()
    
    func image(name: String) -> Image {
        let index = _guaranteeImage(name: name)
        
        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(name))
    }

    static func loadImage(name: String) -> CGImage {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
        else {
            fatalError("Couldn't load image \(name).jpg from main bundle.")
        }
        return image
    }
    
    fileprivate func _guaranteeImage(name: String) -> _ImageDictionary.Index {
        if let index = images.index(forKey: name) { return index }
        
        images[name] = ImageStore.loadImage(name: name)
        return images.index(forKey: name)!
    }
}


