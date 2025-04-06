//
//  CartItemModel.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import Foundation
import SwiftUI

struct CartItem: Identifiable, Equatable {
    let id = UUID()
    let product: Product
    var quantity: Int = 1
    var isSelected: Bool = true

    static func == (lhs: CartItem, rhs: CartItem) -> Bool {
        lhs.product.id == rhs.product.id
    }
}
