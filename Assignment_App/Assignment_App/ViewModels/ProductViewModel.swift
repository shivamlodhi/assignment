//
//  ProductViewModel.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let productService = ProductService()

    init() {
        fetchProducts()
    }


    
    func fetchProducts() {
        isLoading = true
        errorMessage = nil

        productService.fetchProducts { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let products):
                    self?.products = products
                case .failure(let error):
                    self?.errorMessage = "Failed to load products: \(error.localizedDescription)"
                }
            }
        }
    }
}
