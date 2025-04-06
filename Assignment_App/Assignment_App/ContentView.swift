//
//  ContentView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home
    @EnvironmentObject var cartVM: CartViewModel
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                switch selectedTab {
                case .home:
                    HomeView()
                           .environmentObject(cartVM)
                case .catalog:
                    CatalogView()
                case .cart:
                    CartView()
                        .environmentObject(cartVM)
                case .favorites:
                    FavoritesView()
                case .profile:
                    ProfileView()
                }
            }
            CustomTabBar(selectedTab: $selectedTab, cartItemCount: cartVM.totalItems)
        }
    }
}

