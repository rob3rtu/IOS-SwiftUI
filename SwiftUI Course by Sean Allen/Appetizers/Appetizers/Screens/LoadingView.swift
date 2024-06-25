//
//  LoadingView.swift
//  Appetizers
//
//  Created by Robert  on 21.06.2024.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
                
            ProgressView()
                .scaleEffect(2)
                .tint(Color(.brandPrimary))
        }
    }
}

#Preview {
    LoadingView()
}
