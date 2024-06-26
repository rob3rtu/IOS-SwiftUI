//
//  ContentView.swift
//  WeSplit
//
//  Created by Robert  on 25.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var value = 3.4
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $value, format: .currency(code: "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
