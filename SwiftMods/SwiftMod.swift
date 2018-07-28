//
//  MainMode.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/19/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class SwiftMod {
    
    func basic_shadow(with view: UIView) {
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 0.75
    }
    
    func round_corners(with views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = view.frame.width / 2
            
        }
    }
    
    func rounder_corners(with view: UIView) {
        view.layer.cornerRadius = view.frame.width / 2
    }
    
    
    
}
