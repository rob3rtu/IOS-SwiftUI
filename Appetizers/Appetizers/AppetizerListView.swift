//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Robert  on 18.06.2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .alert(isPresented: $viewModel.isShowingAlert, error: viewModel.errorItem) {_ in } message: { error in
                Text(error.failureReason)
            }
            
            if(viewModel.isLoading) {
                LoadingView()
            }
        }

    }
}

#Preview {
    AppetizerListView()
}
