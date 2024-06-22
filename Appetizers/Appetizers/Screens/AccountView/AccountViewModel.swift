//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Robert  on 22.06.2024.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    
    @Published var errorItem:ErrorManager = .nothing
    @Published var isShowingAlert = false
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            
            errorItem = .userSaveSuccess
            isShowingAlert = true
        } catch {
            errorItem = .invalidUserData
            isShowingAlert = true
        }
    }
    
    
    func retrieveUser() {
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            errorItem = .invalidUserData
            isShowingAlert = true
        }
    }
    
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            errorItem = .invalidForm
            isShowingAlert = true
            return false
        }
        
        guard user.email.isValidEmail else {
            errorItem = .invalidEmail
            isShowingAlert = true
            return false
        }
        
        return true
    }
}
