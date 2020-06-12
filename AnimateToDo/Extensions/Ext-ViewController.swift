//
//  Ext-ViewController.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 6/3/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import UIKit

extension UIViewController {
/*
    Creates rainbow color scheme based on the table row and total rows
*/
    
    func colorforIndex(_ index: Int, count: Int, colorRange: ColorRange) -> UIColor {
        
        let hue = colorRange.top + (CGFloat(index) / CGFloat(count)) * colorRange.bottom
        
        var saturation: CGFloat = 1.0
        var brightness: CGFloat = 1.0
        
        switch traitCollection.userInterfaceStyle {
            case .light, .unspecified:
                saturation = colorRange.lightSaturation
                brightness = colorRange.lightBrightness
            case .dark:
                saturation = colorRange.darkSaturation
                brightness = colorRange.darkBrightness
            @unknown default:
                fatalError("Add new user interface style to Switch statment.")
        }
    
        return UIColor(hue: hue,
                       saturation: saturation,
                       brightness: brightness,
                       alpha: 0.9)
    }
}
