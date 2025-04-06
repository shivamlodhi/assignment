//
//  Assignment_AppApp.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import SwiftUI

@main
struct Assignment_AppApp: App {
    @StateObject var cartVM = CartViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartVM)
        }
    }
}
