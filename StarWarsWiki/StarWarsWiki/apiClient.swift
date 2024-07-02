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
    
    private let filmsURL = baseURL + "films"
    
    
    
    func getMovies () async throws -> [Film] {
        guard let url = URL(string: filmsURL) else {
            throw Errors.somethingWentWrong
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let decoder = JSONDecoder()
            let decodedResponse = try decoder.decode(FilmResponse.self, from: data)
            return decodedResponse.results
        } catch {
            throw Errors.somethingWentWrong
        }
    }
    
}
