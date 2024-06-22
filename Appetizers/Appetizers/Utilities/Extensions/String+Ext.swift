//
//  String+Ext.swift
//  Appetizers
//
//  Created by Robert  on 22.06.2024.
//

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
        
    }
}
