//
//  APButton.swift
//  Appetizers
//
//  Created by Robert  on 22.06.2024.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(.brandPrimary)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    APButton(title: "Title")
}
