//
//  Appetizer.swift
//  Appetizers
//
//  Created by Robert  on 19.06.2024.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Test appetizer",
                                           description: "the best description",
                                           price: 12.34,
                                           imageURL: "",
                                           calories: 12,
                                           protein: 123,
                                           carbs: 345)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer] 
}
