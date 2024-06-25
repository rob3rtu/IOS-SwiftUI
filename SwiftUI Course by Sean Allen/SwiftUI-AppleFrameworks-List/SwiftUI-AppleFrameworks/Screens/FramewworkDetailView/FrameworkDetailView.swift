//
//  FrameworkDetailView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Robert  on 14.06.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    
    var body: some View {
        VStack {
            
            Spacer()
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn more")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
            
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
