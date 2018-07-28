//
//  DateMods.swift
//  Pretzel
//
//  Created by Cyril Garcia on 7/19/18.
//  Copyright © 2018 Cyril Garcia. All rights reserved.
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
