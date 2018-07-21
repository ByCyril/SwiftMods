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
    
    static func type_a() -> String {
        return timestamp(with: "EEEE, MMM d, yyyy")
    }
    
    static func type_b() -> String {
        return timestamp(with: "MM/dd/yyyy")
    }
    
    static func type_c() -> String {
        return timestamp(with: "MM-dd-yyyy HH:mm")
    }
    
    static func type_d() -> String {
        return timestamp(with: "MMM d, h:mm a")
    }
    
    static func type_e() -> String {
        return timestamp(with: "MMMM yyyy")
    }
    
    static func type_f() -> String {
        return timestamp(with: "MMM d, yyyy")
    }
    
    static func type_g() -> String {
        return timestamp(with: "dd.MM.yy")
    }
    
    static func type_h() -> String {
        return timestamp(with: "E, d MMM yyyy HH:mm:ss Z")
    }
    
    static func type_i() -> String {
        return timestamp(with: "yyyy-MM-dd'T'HH:mm:ssZ")
    }
    
}
