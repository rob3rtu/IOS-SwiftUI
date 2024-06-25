//
//  Alert.swift
//  Appetizers
//
//  Created by Robert  on 21.06.2024.
//

import SwiftUI

enum ErrorManager: LocalizedError {
    
    //MARK: - Account Errors
    case invalidEmail
    case invalidForm
    case userSaveSuccess
    case invalidUserData
    
    //MARK: - Network Errors
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
    case nothing
    
    var errorDescription: String? {
        switch self {
        case .nothing:
            ""
        case .invalidEmail:
            "Invalid Email"
        case .invalidForm:
            "Invalid Form"
        case .userSaveSuccess:
            "Profile Saved"
        case .invalidUserData:
            "Profile Error"
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
            "Unable to complete your request at this time."
        case .nothing:
            ""
        case .invalidEmail:
            "Please enter an invalid email address."
        case .invalidForm:
            "Please ensure all fields have been filled out."
        case .userSaveSuccess:
            "Your profile information was successfully saved."
        case .invalidUserData:
            "There was an error saving your data."
        }
    }
}
