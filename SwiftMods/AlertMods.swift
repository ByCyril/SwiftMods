//  MIT License
//
//  Copyright (c) 2018 Cyril Garcia
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit

public class AlertMods {
    
    /**
     Custom Alert
    
     - Parameter Title: Title of your alert
     - Parameter Message: Message of your alert
     - Parameter vc: The view controller where the Alert will be displayed.

     */
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
    public static func genericError(vc: UIViewController) {
        customController(title: "Error", message: "Whoops, something went wrong. Please try again later.", with: vc)
    }
    
    /**
     Login failed with username and password
     ## Details ##
     - Title: Login Failed
     - Message: Username or password did not match our records.
     
     - Parameter vc: The view controller where the Alert will be displayed.
     */
    public static func loginFailedWithUsername(with vc: UIViewController) {
        customController(title: "Login Failed", message: "Username or password did not match our records.", with: vc)
    }
    
    /**
     Login failed with email and password
     ## Details ##
     - Title: Login Failed
     - Message: Email or password did not match our records.
     
     - Parameter vc: The view controller where the Alert will be displayed.
     */
    public static func loginFailedWithEmail(with vc: UIViewController) {
        customController(title: "Login Failed", message: "Email or password did not match our records.", with: vc)
    }
    
    /**
     Passwords don't match
     ## Details ##
     - Title: Registration Failed
     - Message: Password and confirm password does not match.
     
     - Parameter vc: The view controller where the Alert will be displayed.
     */
    public static func passwordsDontMatch(with vc: UIViewController) {
        customController(title: "Registration Failed", message: "Password and confirm password does not match.", with: vc)
    }
    
    /**
     Network Error
     ## Details ##
     - Title: Network Failed
     - Message: The network has failed. Please try again later.
     
     - Parameter vc: The view controller where the Alert will be displayed.
     */
    public static func networkError(with vc: UIViewController) {
        customController(title: "Network Failed", message: "The network has failed. Please try again later.", with: vc)
    }
    
    /**
     Generic 404 Error
     ## Details ##
     - Title: "404 Error
     - Message: Could not load page.
     
     - Parameter vc: The view controller where the Alert will be displayed.
     */
    public static func generic404Error(with vc: UIViewController) {
        customController(title: "404 Error", message: "Could not load page.", with: vc)
    }
    
    
}
