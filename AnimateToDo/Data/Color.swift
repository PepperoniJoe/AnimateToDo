//
//  Color.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 6/2/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import Foundation
import CoreGraphics

typealias ColorRange = (color: String, top: CGFloat, bottom: CGFloat, lightSaturation: CGFloat, darkSaturation: CGFloat, lightBrightness: CGFloat, darkBrightness: CGFloat)

struct ColorSettings {
    
    static let preferredRange: Int = 8
    
    static let colorRange: [(color: String, top: CGFloat, bottom: CGFloat, lightSaturation: CGFloat, darkSaturation: CGFloat, lightBrightness: CGFloat, darkBrightness: CGFloat)] = [
        ("original", 0, 1, 1, 1, 1, 1),
        ("peaches-gold", 0, 0.1, 0.5, 0.5, 0.75, 0.75),
        ("gold-green", 0.1, 0.2, 0.5, 0.5, 0.75, 0.75),
        ("greens-blue", 0.2, 0.3, 0.5, 0.5, 0.75, 0.75),
        ("green-blue-purple", 0.3, 0.4, 0.5, 0.5, 0.75, 0.75),
        ("green-blue-purple-red", 0.4, 0.5, 0.6, 0.8, 0.4, 0.75),
        ("blue-purple-red-gold", 0.5, 0.6, 0.5, 0.75, 0.5, 0.75),
        ("purple-lav-pink-red-orange-gold-green", 0.6, 0.7, 0.5, 0.75, 0.5, 0.75),
        ("lav-red-orange-gold-green-skyblue-blue", 0.7, 0.71, 0.6, 0.6, 0.6, 0.6),
        ("rainbow", 0, 1, 0.5, 0.75, 0.5, 0.75),
    ]
}
