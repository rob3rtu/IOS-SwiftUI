//
//  SectionDetails.swift
//  StarWarsWiki
//
//  Created by Robert  on 29.06.2024.
//

import SwiftUI

struct SectionDetails: View {
    
    @Environment(\.dismiss) private var dismiss
    var section: String
    
    var body: some View {
        
        Text("Section: \(section)")
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
        
    }
}

#Preview {
    SectionDetails(section: "Movies")
}
