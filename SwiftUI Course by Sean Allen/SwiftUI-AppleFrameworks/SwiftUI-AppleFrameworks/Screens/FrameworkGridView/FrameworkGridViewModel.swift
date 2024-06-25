//
//  FrameworkGridViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Robert  on 14.06.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
