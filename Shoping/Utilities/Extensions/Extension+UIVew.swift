//
//  Extension+UIView.swift
//  Shoping
//
//  Created by mjeed on 29/11/2023.
//

import UIKit

extension UIView {
    
    func addCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func addBorder(color:Colors , with: CGFloat) {
        self.layer.borderWidth = with
        self.layer.borderColor = UIColor(named: color.rawValue)?.cgColor
    }
    
    func addBorderAndWith(_ color: UIColor , with: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = with
    }
}
