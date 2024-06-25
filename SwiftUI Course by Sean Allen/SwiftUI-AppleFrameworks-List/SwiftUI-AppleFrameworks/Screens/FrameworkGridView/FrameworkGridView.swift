//
//  FrameworkGridView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Robert  on 13.06.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: {
                        FrameworkDetailView(framework: framework, 
                                            isShowingDetailView: $viewModel.isShowingDetailView)
                    }) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
