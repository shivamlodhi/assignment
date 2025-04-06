//
//  HomeView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//

import SwiftUI

import SwiftUI
import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = ProductViewModel()

    @State private var showErrorAlert = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                if viewModel.isLoading {
                    ProgressView("Loading products...")
                        .frame(maxHeight: .infinity)
                } else {
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 20) {
                            TopBarView()
                            SearchBarView()
                            PromoBannerView()
                            CategoriesView()
                            FlashSaleFromAPI(products: viewModel.products)
                        }
                        .padding()
                    }
                    .background(Color(.systemGroupedBackground))
                }

            }
            .edgesIgnoringSafeArea(.bottom)
            .onChange(of: viewModel.errorMessage) {
                if viewModel.errorMessage != nil {
                    showErrorAlert = true
                }
            }
            .alert("Oops!", isPresented: $showErrorAlert) {
                Button("Retry") {
                    viewModel.fetchProducts()
                }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text(viewModel.errorMessage ?? "Something went wrong.")
            }
        }
    }
}
