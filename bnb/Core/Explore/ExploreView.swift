//
//  ExploreView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
            }
            .padding()
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
            }
        }
        .tint(.primary)
    }
}

#Preview {
    ExploreView()
}
