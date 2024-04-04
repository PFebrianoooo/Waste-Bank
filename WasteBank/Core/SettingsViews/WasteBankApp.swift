//
//  WasteBankApp.swift
//  WasteBank
//
//  Created by Putra Pebriano Nurba on 04/04/24.
//

import SwiftUI

@main
struct WasteBankApp: App {
    
    @StateObject var wasteViewModel = WasteBankViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(wasteViewModel)
            .navigationBarBackButtonHidden(true)
        }
    }
}
