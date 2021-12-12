//
//  UIView+Utils.swift
//  Bankin
//
//  Created by Karim BEN HAMMOUDA on 12/12/2021.
//

import UIKit

extension UIView {
    func setGradientBackground(_ colorTop: CGColor? = nil, _ colorBottom: CGColor? = nil) {
        let colorTop = colorTop ?? UIColor(red: 175.0/255.0, green: 238.0/255.0, blue: 238.0/255.0, alpha: 1.0).cgColor
        let colorBottom = colorBottom ?? UIColor.white.cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setRadius(_ radius: CGFloat? = nil) {
        layer.cornerRadius = radius ?? frame.height / 2
        layer.masksToBounds = true
    }
}
