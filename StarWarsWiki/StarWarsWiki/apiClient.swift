//
//  apiClient.swift
//  StarWarsWiki
//
//  Created by Robert  on 29.06.2024.
//

import Foundation

final class apiClient {
    
    static let shared = apiClient()
    private init() {}
    
    static let baseURL = "https://swapi.dev/api/"
    
}
