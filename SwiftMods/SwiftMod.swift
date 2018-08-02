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

class SwiftMod {
    
    /**
    Add shadow effect
     ## Details ##
     
     Adding basic shadow to any UI element
     - Parameter view: The UI element where shadow will be applied.
     */
    func basic_shadow(with view: UIView) {
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 0.75
    }
    
    /**
     Round Corners
     ## Details ##
     
     Add round corners to multiple UI elements
     
     - Parameter views: The UI elements where rounded corners will be applied.
     */
    func round_corners(with views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = view.frame.width / 2
            
        }
    }
    
    /**
     Round Corners
     ## Details ##
     
     Applying round corners to a single UI element
     
     - Parameter view: the UI element where rounded corners will be applied.
     */
    func rounder_corners(with view: UIView) {
        view.layer.cornerRadius = view.frame.width / 2
    }
    
}
