//
//  SearchBarView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search the entire shop", text: .constant(""))
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}
