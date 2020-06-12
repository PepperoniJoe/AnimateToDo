//
//  FirstCell.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 5/29/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    let gradientLayer = CAGradientLayer()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        gradientLayer.frame        = self.bounds
        layer.cornerRadius         = Data.cornerRadius
        gradientLayer.cornerRadius = Data.cornerRadius
        layer.masksToBounds = true
        let color1 = UIColor(white: 0.0, alpha: 0.00).cgColor
        let color2 = UIColor(white: 1.0, alpha: 0.20).cgColor
        let color3 = UIColor(white: 1.0, alpha: 0.25).cgColor
        let color4 = UIColor(white: 1.0, alpha: 0.10).cgColor
        gradientLayer.colors = [color1, color2, color3, color4]
        gradientLayer.locations = [0.0, 0.05, 0.50, 1.0]
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = self.bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
    }
}


