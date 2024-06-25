//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Robert  on 18.06.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera",
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type",
                                              message: "The value scanned is not valid",
                                              dismissButton: .default(Text("Ok")))
}
