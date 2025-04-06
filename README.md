
# 🛍️ SwiftUI eCommerce App Assignment

A modern and responsive eCommerce application built with SwiftUI using real-time product data from [FakeStoreAPI](https://fakestoreapi.com). The app includes a shopping cart, product detail pages, favorites, and a custom tab bar.

## 📱 Features

- ✅ Home screen with:
  - TopBar with address, offer, and notifications
  - Promo banners
  - Categories section
  - Flash sale with timer and product cards
- 🛍 Product detail view with "Add to Cart" functionality
- 🛒 Cart view with:
  - Quantity controls
  - Select all toggle
  - Checkout with “Thank You” popup
- ❤️ Favorites screen
- 👤 Profile screen
- 📦 Catalog screen
- 🧭 Custom tab bar with:
  - Home
  - Catalog
  - Cart (with badge count)
  - Favorites
  - Profile

## 🛠 Architecture

- **MVVM (Model-View-ViewModel)** pattern
- Network layer with proper error handling
- Live badge count update on cart icon

## 📦 Dependencies

- Built using native **SwiftUI**
- Uses `AsyncImage` for image loading
- No third-party libraries required

## 🧪 FakeStoreAPI

Data is fetched using:
