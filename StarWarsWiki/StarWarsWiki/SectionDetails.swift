//
//  SectionDetails.swift
//  StarWarsWiki
//
//  Created by Robert  on 29.06.2024.
//

import SwiftUI

struct SectionDetails: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var data: [Film] = []
    var section: String
    
    var body: some View {
        List(data, id: \.episode_id) { film in
            Text(film.title)
        }
        .navigationTitle(section)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }, label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                    }
                })
            }
        }
        .task {
            getFilms()
        }
    }
    
    func getFilms () {
        Task {
            do {
                data = try await apiClient.shared.getMovies()
            } catch {
                print(error)
            }
        }
    }
}

#Preview {
    SectionDetails(section: "Movies")
}
