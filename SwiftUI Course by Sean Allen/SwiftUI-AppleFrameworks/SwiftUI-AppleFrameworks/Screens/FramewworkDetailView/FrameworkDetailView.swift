//
//  FrameworkDetailView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Robert  on 14.06.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString)!) {
                AFButton(title: "Learn more")
            }
            
//            Button {
//                isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn more")
//                Label("Learn more", systemImage: "book.fill")
//            }
//            .buttonStyle(.borderedProminent)
//            .controlSize(.large)
//            .tint(.red)
            
        }
//        .fullScreenCover(isPresented: $isShowingSafariView, content: {
//            SafariView(url: URL(string: framework.urlString)!)
//        })
            
        
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
