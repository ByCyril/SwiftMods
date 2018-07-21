//
//  AnimateMod.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/21/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class AnimateMod {
    
    public class func show_from_top(myView: UIView, position: CGPoint) {
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
            myView.center.y = position.y
            myView.center.x = position.x
            
        }, completion: nil)
        
    }
    
    public class func move_out_to_top(myView: UIView) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.5, initialSpringVelocity: 0.0, options: .curveEaseOut, animations: {
            myView.center.y = -500
            
        }, completion: nil)
    }
    
    public class func show_from_bottom(myView: UIView, position: CGPoint) {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
            myView.center.y = position.y
            myView.center.x = position.x
            
        }, completion: nil)
        
    }
    
    public class func move_out_to_bottom(myView: UIView, superViewSize: UIView) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.0, options: .curveEaseOut, animations: {
            myView.center.y = superViewSize.center.y + 1000
            
        }, completion: nil)
    }
}
