//
//  TopBarView.swift
//  Assignment_App
//
//  Created by Shivam Lodhi on 05/04/25.
//
import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack {
            Image(systemName: "gearshape.fill")
                .padding(10)
                .background(Color.green.opacity(0.1))
                .clipShape(Circle())
                .foregroundColor(.green)

            VStack(alignment: .center, spacing: 2) {
                Text("Delivery address")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("92 High Street, London")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .frame(maxWidth: .infinity, alignment: .center)

            Image(systemName: "bell")
                .foregroundColor(.primary)
        }
        .padding(.top, 20)
    }
}
