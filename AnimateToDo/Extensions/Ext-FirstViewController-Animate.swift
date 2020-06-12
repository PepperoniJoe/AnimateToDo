//
//  Ext-FirstViewController-Animate.swift
//  AnimateToDo
//
//  Created by Marcy Vernon on 6/11/20.
//  Copyright © 2020 Marcy Vernon. All rights reserved.
//


import UIKit

extension UITableView {
/*
     Creates the table animation
*/
    
    func animateTable() {
        
        DispatchQueue.main.async {
            self.reloadData()
            let cells       = self.visibleCells
            let tableHeight = self.bounds.size.height
            
            for (index, cell) in cells.enumerated() {
                cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
                UIView.animate(withDuration           : 1.0,
                               delay                  : 0.1 * Double(index),
                               usingSpringWithDamping : 0.8,
                               initialSpringVelocity  : 0,
                               options                : [],
                               animations: { cell.transform = CGAffineTransform(translationX: 0, y: 0)},
                               completion             : nil)
            }
        }
    }
}
