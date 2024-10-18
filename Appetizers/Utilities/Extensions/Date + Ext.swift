//
//  Date + Ext.swift
//  Appetizers
//
//  Created by Minata on 20/08/2024.
//

import Foundation

extension Date {
   
    var eighttennYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
    
}
