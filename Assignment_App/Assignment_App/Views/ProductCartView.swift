//
//  ProductCartView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct ProductCardViewFromAPI: View {
    let product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            AsyncImage(url: URL(string: product.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                @unknown default:
                    EmptyView()
                }
            }

            Text(product.title)
                .font(.subheadline)
                .lineLimit(2)

            Text("£\(String(format: "%.2f", product.price))")
                .fontWeight(.bold)
        }
        .frame(width: 160)
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
