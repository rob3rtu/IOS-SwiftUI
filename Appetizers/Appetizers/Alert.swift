//
//  Alert.swift
//  Appetizers
//
//  Created by Robert  on 21.06.2024.
//

import SwiftUI

enum ErrorManager: LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
    case nothing
    
    var errorDescription: String? {
        switch self {
        case .nothing:
            ""
        default:
            "Server Error"
        }
    }
    
    var failureReason: String {
        switch self {
        case .invalidData:
            "The data received is invalid."
        case .invalidURL:
            "There was an issue connecting to the server."
        case .invalidResponse:
            "Invalid response from the server"
        case .unableToComplete:
            "Unable to complete your request at this time"
        case .nothing:
            ""
        }
    }
}
