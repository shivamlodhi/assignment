//
//  CartView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartVM: CartViewModel
    @State private var showThankYouAlert = false
    @State private var selectAll = true

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.circle")
                    Text("92 High Street, London")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .padding()

                HStack {
                    Toggle("Select all", isOn: $selectAll)
                        .onChange(of: selectAll) {
                            cartVM.toggleSelectAll(selectAll)
                        }
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                    Image(systemName: "pencil")
                }
                .padding(.horizontal)

                ScrollView {
                    ForEach(cartVM.items) { item in
                        HStack {
                            Button(action: {
                                if let index = cartVM.items.firstIndex(of: item) {
                                    cartVM.items[index].isSelected.toggle()
                                }
                            }) {
                                Image(systemName: item.isSelected ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(.green)
                            }

                            AsyncImage(url: URL(string: item.product.image)) { phase in
                                if let image = try? phase.image {
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60)
                                        .cornerRadius(8)
                                } else {
                                    Rectangle().fill(Color.gray.opacity(0.2)).frame(width: 60, height: 60)
                                }
                            }

                            VStack(alignment: .leading) {
                                Text(item.product.title)
                                    .font(.subheadline)
                                    .lineLimit(2)
                                Text("£\(String(format: "%.2f", item.product.price))")
                                    .bold()
                            }

                            Spacer()

                            HStack {
                                Button(action: {
                                    cartVM.decrement(item)
                                }) {
                                    Image(systemName: "minus.circle")
                                }

                                Text("\(item.quantity)")
                                    .frame(width: 30)

                                Button(action: {
                                    cartVM.increment(item)
                                }) {
                                    Image(systemName: "plus.circle")
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 6)
                    }
                }

                Button(action: {
                    showThankYouAlert = true
                }) {
                    Text("Checkout")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.black)
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .padding(.bottom, 10)
                .alert("Thank You!", isPresented: $showThankYouAlert) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("Your order has been placed successfully.")
                }

            }
            .navigationTitle("Cart")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
