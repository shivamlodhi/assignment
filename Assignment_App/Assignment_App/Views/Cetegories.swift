//
//  Cetegories.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct CategoriesView: View {
    let categories = ["Phones", "Consoles", "Laptops", "Cameras", "Audio"]
    let icons = ["iphone", "gamecontroller", "laptopcomputer", "camera", "headphones"]

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Categories")
                    .font(.headline)
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
                HStack(spacing: 24) {
                    ForEach(0..<categories.count, id: \.self) { index in
                        VStack {
                            Image(systemName: icons[index])
                                .font(.title)
                                .padding()
                                .background(Color(.systemGray6))
                                .clipShape(Circle())
                            Text(categories[index])
                                .font(.caption)
                        }
                    }
                }
                .padding(.top, 8)
            }
        }
    }
}
