//
//  EndPoint.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import Foundation

enum Endpoints {
    static let baseURL = "https://fakestoreapi.com"
    
    static var productsURL: URL {
        return URL(string: "\(baseURL)/products")!
    }
}
