//
//  ProductDetailView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct ProductDetailView: View {
    let product: Product
    @EnvironmentObject var cartVM: CartViewModel
    @State private var showAddToCartAlert = false


    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Image carousel or single image
                AsyncImage(url: URL(string: product.image)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(10)
                    case .failure:
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                    @unknown default:
                        EmptyView()
                    }
                }
                .padding(.horizontal)

                // Title
                Text(product.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                // Ratings
                HStack(spacing: 12) {
                    Label("\(product.rating.rate, specifier: "%.1f")", systemImage: "star.fill")
                        .foregroundColor(.green)
                    Text("\(product.rating.count) reviews")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Label("94%", systemImage: "checkmark.seal.fill")
                        .foregroundColor(.green)
                    Label("8", systemImage: "bubble.left.fill")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)

                // Price
                HStack {
                    Text("£\(String(format: "%.2f", product.price))")
                        .font(.title3)
                        .fontWeight(.bold)
                    Text("from £14 per month")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)

                // Description
                Text(product.description)
                    .padding(.horizontal)
                    .padding(.top, 4)

                Spacer(minLength: 20)

                // Add to Cart
                Button(action: {
                    cartVM.addToCart(product: product)
                    showAddToCartAlert = true
                }) {
                    Text("Add to cart")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .alert("Added to Cart", isPresented: $showAddToCartAlert) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("“\(product.title)” has been added to your cart.")
                }
                
                Text("Delivery on 26 October")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}
