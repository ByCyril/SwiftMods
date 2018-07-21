//
//  ImageMods.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/19/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class ColorMods: Mod {
    
    override init(view_controller: UIViewController) {
        super.init(view_controller: view_controller)
        
    }
    
    public func rgb(red: Int, green: Int, blue: Int) -> UIColor {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    public func hex(hex_value: Int) -> UIColor {
        return rgb(red: (hex_value >> 16) & 0xFF,green: (hex_value >> 8) & 0xFF,blue: hex_value & 0xFF)
    }
    
    public func set_gradient_background(with color_one: UIColor, color_two: UIColor, with view: UIView) {
        
        let gradient_layer = CAGradientLayer()
        gradient_layer.frame = view.bounds
        gradient_layer.colors = [color_one.cgColor, color_two.cgColor]
        gradient_layer.locations = [0.0, 1.0]
        gradient_layer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradient_layer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        view.layer.insertSublayer(gradient_layer, at: 0)
    }
    
}
