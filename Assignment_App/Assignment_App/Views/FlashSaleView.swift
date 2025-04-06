//
//  FlashSaleView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import SwiftUI

struct FlashSaleFromAPI: View {
    let products: [Product]

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Flash Sale")
                    .font(.headline)
                Text("02:59:23")
                    .font(.caption)
                    .padding(6)
                    .background(Color.yellow)
                    .cornerRadius(8)
                Spacer()
                Button(action: {
                    // Action for see all
                }) {
                    HStack(spacing: 4) {
                        Text("See all")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(.gray)
                    .font(.subheadline)
                }
                .buttonStyle(PlainButtonStyle()) 
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(products.prefix(5)) { product in
                        NavigationLink(destination: ProductDetailView(product: product)) {
                            ProductCardViewFromAPI(product: product)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.top, 8)
            }
        }
    }
}
