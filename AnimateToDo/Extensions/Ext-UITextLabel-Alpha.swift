//
//  Ext-UITextLabel-Alpha.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 6/11/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import UIKit

extension UILabel {
    
    func setAlphaBasedOnInterfaceStyle() {
        switch traitCollection.userInterfaceStyle {
            case .light, .unspecified:
                self.alpha = Data.lightAlpha
            case .dark:
                self.alpha = Data.darkAlpha
            @unknown default:
            fatalError("Add new user interface style to Switch statment.")
        }
    }
}

