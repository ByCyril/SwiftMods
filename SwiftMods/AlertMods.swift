//
//  AlertControllers.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/19/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
//

import UIKit

class AlertMods {
   
    private static func alert() {
        
    }
    
    public static func custom_controller(title: String, message: String, with view_controller: UIViewController) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okay = UIAlertAction(title: "Okay", style: .default, handler: nil)
        ac.addAction(okay)
        
        view_controller.present(ac, animated: true, completion: nil)
        
    }
    
    static func generic_error(with view_controller: UIViewController) {
        custom_controller(title: "Error", message: "Whoops, something went wrong. Please try again later.", with: view_controller)
    }
    
    static func login_failed_with_username(with view_controller: UIViewController) {
        custom_controller(title: "Login Failed", message: "Username or password did not match our records.", with: view_controller)
    }
    
    static func login_failed_with_email(with view_controller: UIViewController) {
        custom_controller(title: "Login Failed", message: "Email or password did not match our records.", with: view_controller)
    }
    
    static func passwords_dont_match(with view_controller: UIViewController) {
        custom_controller(title: "Registration Failed", message: "Password and confirm password does not match.", with: view_controller)
    }
    
    static func network_error(with view_controller: UIViewController) {
        custom_controller(title: "Network Failed", message: "The network has failed. Please try again later.", with: view_controller)
    }
    
    static func generic_404_error(with view_controller: UIViewController) {
        custom_controller(title: "404 Error", message: "Could not load page.", with: view_controller)
    }
    
    
    
    
    
    
}
