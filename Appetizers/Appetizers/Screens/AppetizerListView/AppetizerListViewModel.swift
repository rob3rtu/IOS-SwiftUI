//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Robert  on 20.06.2024.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var errorItem:ErrorManager = .nothing
    @Published var isShowingAlert = false
    @Published var isLoading = false
    
    func getAppetizers() {
        self.isLoading = true
        
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                self.isLoading = false
                
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.errorItem = .invalidResponse
                        
                    case .invalidURL:
                        self.errorItem = .invalidURL
                        
                    case .invalidData:
                        self.errorItem = .invalidData
                        
                    case .unableToComplete:
                        self.errorItem = .unableToComplete
                    }
                    
                    self.isShowingAlert = true
                }
            }
        }
    }
}
