//
//  APIService.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import Foundation

class APIService {
    static let shared = APIService()
    
    private init() {}
    
    func request<T: Decodable>(_ url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "DataNilError", code: -1)))
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(error))
            }
            
        }.resume()
    }
}
