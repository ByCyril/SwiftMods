//
//  AlertControllers.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/19/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class AlertMods {
    
    public static func customController(title: String, message: String, with vc: UIViewController) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okay = UIAlertAction(title: "Okay", style: .default, handler: nil)
        ac.addAction(okay)
        
        vc.present(ac, animated: true, completion: nil)
        
    }
    
    /**
     Generic error
     ## Details ##
     - Title: Error
     - Message: Whoops, something went wrong. Please try again later.
     
     - Parameter vc: The view controller where the Alert will be displayed.
     */
    static func genericError(vc: UIViewController) {
        customController(title: "Error", message: "Whoops, something went wrong. Please try again later.", with: vc)
    }
    
    static func loginFailedWithUsername(with vc: UIViewController) {
        customController(title: "Login Failed", message: "Username or password did not match our records.", with: vc)
    }
    
    static func loginFailedWithEmail(with vc: UIViewController) {
        customController(title: "Login Failed", message: "Email or password did not match our records.", with: vc)
    }
    
    static func passwordsDontMatch(with vc: UIViewController) {
        customController(title: "Registration Failed", message: "Password and confirm password does not match.", with: vc)
    }
    
    static func networkError(with vc: UIViewController) {
        customController(title: "Network Failed", message: "The network has failed. Please try again later.", with: vc)
    }
    
    
    static func generic404Error(with vc: UIViewController) {
        customController(title: "404 Error", message: "Could not load page.", with: vc)
    }
    
    
}
