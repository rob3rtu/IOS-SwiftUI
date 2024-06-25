//
//  AFButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Robert  on 14.06.2024.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
    }
}
