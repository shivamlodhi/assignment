//
//  CartItemMo.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import Foundation

class CartViewModel: ObservableObject {
    @Published var items: [CartItem] = []

    var totalAmount: Double {
        items
            .filter { $0.isSelected }
            .map { $0.product.price * Double($0.quantity) }
            .reduce(0, +)
    }
    var totalItems: Int {
        items.reduce(0) { $0 + $1.quantity }
    }
    func addToCart(product: Product) {
        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].quantity += 1
        } else {
            items.append(CartItem(product: product))
        }
    }

    func increment(_ item: CartItem) {
        if let index = items.firstIndex(of: item) {
            items[index].quantity += 1
        }
    }

    func decrement(_ item: CartItem) {
        if let index = items.firstIndex(of: item), items[index].quantity > 1 {
            items[index].quantity -= 1
        }
    }

    func toggleSelectAll(_ selected: Bool) {
        for index in items.indices {
            items[index].isSelected = selected
        }
    }
}
