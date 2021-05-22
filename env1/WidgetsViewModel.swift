//
//  WidgetsViewModel.swift
//  env1
//
//  Created by Kevin Evans on 22/05/2021.
//

import SwiftUI

class WidgetViewModel: ObservableObject {
    @Published var message: String = "Widgets are great"
    
    func fetch() -> Void {
        print("Fetch called")
    }
}
