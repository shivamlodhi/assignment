//
//  PromoBannerView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct PromoBannerView: View {
    var body: some View {
        HStack {
            Text("Delivery is ")
                .fontWeight(.medium)
            + Text("50% ")
                .foregroundColor(.green)
                .fontWeight(.bold)
            + Text("cheaper")
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white)
                .shadow(radius: 2)
        )
    }
}
