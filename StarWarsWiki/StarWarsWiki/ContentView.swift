//
//  ContentView.swift
//  StarWarsWiki
//
//  Created by Robert  on 29.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    let menuItems = ["Films", "Peoples", "Starships", "Vehicles", "Species", "Planets"]
    
    var body: some View {
        NavigationStack {
            List(menuItems, id: \.self) { listItem in
                NavigationLink {
                    SectionDetails(section: listItem)
                } label: {
                    HStack {
                        Image(systemName: getIcon(listItem))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 18)
                        
                        Text("\(listItem)")
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Star Wars Wiki")
        }
    }
    
    func getIcon(_ section: String) -> String {
        switch section {
        case "Films":
            return "movieclapper"
        case "Peoples":
            return "person.2"
        case "Starships":
            return "airplane.circle"
        case "Vehicles":
            return "car"
        case "Species":
            return "lizard"
        case "Planets":
            return "globe.americas"
        default:
            return "questionmark"
        }
    }
}

#Preview {
    ContentView()
}
