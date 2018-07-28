//
//  ImageMods.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/19/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class ColorMods {
    
    public static func rgb(red: Int, green: Int, blue: Int) -> UIColor {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    public static func hex(hexValue: Int) -> UIColor {
        return rgb(red: (hexValue >> 16) & 0xFF,green: (hexValue >> 8) & 0xFF,blue: hexValue & 0xFF)
    }
    
    public static func setGradientBackgroundColor(with colorOne: UIColor, colorTwo: UIColor, with view: UIView) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
