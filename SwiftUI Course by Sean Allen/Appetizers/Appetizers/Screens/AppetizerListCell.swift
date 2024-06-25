//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Robert  on 19.06.2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            //            AppetizerRemoteImage(urlString: appetizer.imageURL)
            //                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            //                .frame(width: 120, height: 90)
            //                .clipShape(.rect(cornerRadius: 10))
            
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 90)
                    .clipShape(.rect(cornerRadius: 10))
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 90)
                    .clipShape(.rect(cornerRadius: 10))
            }
            
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
