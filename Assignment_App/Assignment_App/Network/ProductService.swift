//
//  ProductService.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import Foundation

class ProductService {
    func fetchProducts(completion: @escaping (Result<[Product], Error>) -> Void) {
        let url = Endpoints.productsURL
        APIService.shared.request(url, completion: completion)
    }
}
