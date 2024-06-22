//
//  User.swift
//  Appetizers
//
//  Created by Robert  on 22.06.2024.
//

import Foundation

struct User: Codable {
    
     var firstName       = ""
     var lastName        = ""
     var email           = ""
     var birthdate       = Date()
     var extraNapkins    = false
     var frequentRefills = false
}
