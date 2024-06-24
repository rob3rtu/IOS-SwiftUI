//
//  Appetizer.swift
//  Appetizers
//
//  Created by Robert  on 19.06.2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
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
    
    static let orderItem1 = Appetizer(id: 1,
                                           name: "Test appetizer one",
                                           description: "the best description",
                                           price: 12.34,
                                           imageURL: "",
                                           calories: 12,
                                           protein: 123,
                                           carbs: 345)
    
    static let orderItem2 = Appetizer(id: 2,
                                      name: "Test appetizer two",
                                      description: "the best description",
                                      price: 12.34,
                                      imageURL: "",
                                      calories: 12,
                                      protein: 123,
                                      carbs: 345)
    
    static let orderItem3 = Appetizer(id: 3,
                                      name: "Test appetizer three",
                                      description: "the best description",
                                      price: 12.34,
                                      imageURL: "",
                                      calories: 12,
                                      protein: 123,
                                      carbs: 345)
    
    static let orderItems = [orderItem1, orderItem2, orderItem3]
}
