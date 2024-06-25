//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Robert  on 18.06.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
