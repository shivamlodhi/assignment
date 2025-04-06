//
//  CustomTabBar].swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

enum Tab {
    case home, catalog, cart, favorites, profile
}


struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    var cartItemCount: Int

    var body: some View {
        HStack {
            TabBarItem(
                systemIcon: "house.fill",
                label: "Home",
                badge: nil,
                isSelected: selectedTab == .home
            ) {
                selectedTab = .home
            }

            TabBarItem(
                systemIcon: "square.grid.2x2.fill",
                label: "Catalog",
                badge: nil,
                isSelected: selectedTab == .catalog
            ) {
                selectedTab = .catalog
            }

            TabBarItem(
                systemIcon: "cart.fill",
                label: "Cart",
                badge: cartItemCount > 0 ? "\(cartItemCount)" : nil,
                isSelected: selectedTab == .cart
            ) {
                selectedTab = .cart
            }

            TabBarItem(
                systemIcon: "heart.fill",
                label: "Favorites",
                badge: nil,
                isSelected: selectedTab == .favorites
            ) {
                selectedTab = .favorites
            }

            TabBarItem(
                systemIcon: "person.fill",
                label: "Profile",
                badge: nil,
                isSelected: selectedTab == .profile
            ) {
                selectedTab = .profile
            }
        }
        .padding()
        .background(Color.white)
        .shadow(radius: 5)
    }
}

struct TabBarItem: View {
    var systemIcon: String
    var label: String
    var badge: String? = nil
    var isSelected: Bool
    var tapAction: () -> Void

    var body: some View {
        Button(action: tapAction) {
            VStack(spacing: 4) {
                ZStack {
                    Image(systemName: systemIcon)
                        .font(.headline)
                        .foregroundColor(isSelected ? .blue : .gray)

                    if let badge = badge {
                        Text(badge)
                            .font(.caption2)
                            .foregroundColor(.white)
                            .padding(4)
                            .background(Color.black)
                            .clipShape(Circle())
                            .offset(x: 10, y: -10)
                    }
                }

                Text(label)
                    .font(.caption)
                    .foregroundColor(isSelected ? .blue : .gray)
                    .fontWeight(isSelected ? .bold : .regular)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct CatalogView: View {
    var body: some View {
        VStack {
            Text("Catalog")
                .font(.largeTitle)
                .bold()
                .padding()

            Spacer()

            Text("This is the Catalog screen.")
                .foregroundColor(.gray)

            Spacer()
        }
        .navigationTitle("Catalog")
    }
}

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .bold()
                .padding()

            Spacer()

            Text("You have no favorite items yet.")
                .foregroundColor(.gray)

            Spacer()
        }
        .navigationTitle("Favorites")
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .bold()
                .padding()

            Spacer()

            Text("User profile and settings will appear here.")
                .foregroundColor(.gray)

            Spacer()
        }
        .navigationTitle("Profile")
    }
}
