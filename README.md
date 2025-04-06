## 🚀 How to Run the App

Follow these steps to run the project locally:

1. **Clone the Repository**
   ```bash
   git clone https://github.com/shivamlodhi/assignment.git

2. **Open the Project in Xcode**
   - Locate the .xcodeproj file or .xcodeworkspace file.
   - Double-click to open in Xcode (preferably Xcode 14+).
3. **Build the Project**
4. **Using the App**
   - Home tab displays featured products and categories.
   - Tap a product to view its details.
   - Add to cart and checkout with a "Thank You" popup.
   
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
