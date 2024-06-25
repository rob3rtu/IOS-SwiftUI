//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Robert  on 25.06.2024.
//

import Foundation

extension Date {
    
    var eighteenYearsOld: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsOld: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
