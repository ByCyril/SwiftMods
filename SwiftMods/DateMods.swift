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

class DateMods {
    
    private enum DateFormat {
        case typeA
        case typeB
        case typeC
        case typeD
        case typeE
        case typeF
        case typeG
    }
    
    private static func timestamp(with format: String) -> String {
        
        let formatter = DateFormatter()
        
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = format
        
        return formatter.string(from: Date())
    }
    
    /**
     Format: Wednesday, Jul 25, 2018
     */
    static func typeA() -> String {
        return timestamp(with: "EEEE, MMM d, yyyy")
    }
    /**
     Format: 07/25/2018
     */
    static func typeB() -> String {
        return timestamp(with: "MM/dd/yyyy")
    }
    /**
     Format: 07-25-2018 18:48
     */
    static func typeC() -> String {
        return timestamp(with: "MM-dd-yyyy HH:mm")
    }
    /**
     Format: 07-25-2018 6:48 PM
     */
    static func typeD() -> String {
        return timestamp(with: "MMM d, h:mm a")
    }
    /**
     Format: July 2018
     */
    static func typeE() -> String {
        return timestamp(with: "MMMM yyyy")
    }
    /**
     Format: Jul 25, 2018
     */
    static func typeF() -> String {
        return timestamp(with: "MMM d, yyyy")
    }
    /**
     Format: 25.07.18
     */
    static func typeG() -> String {
        return timestamp(with: "dd.MM.yy")
    }
    /**
     Format: Wed, 25 Jul 2018 18:48:01 -0700
     */
    static func typeH() -> String {
        return timestamp(with: "E, d MMM yyyy HH:mm:ss Z")
    }
    /**
     Format: 2018-07-25T18:48:01-0700
     */
    static func typeI() -> String {
        return timestamp(with: "yyyy-MM-dd'T'HH:mm:ssZ")
    }
    
}
