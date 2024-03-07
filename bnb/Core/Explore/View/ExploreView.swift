//
//  ExploreView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExporeViewModel(service: ExploreService())

    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
            ScrollView {
                SearchAndFilterBar()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            showDestinationSearchView.toggle()
                        }
                    }
                LazyVStack(spacing: 32) {
                    ForEach(viewModel.listings) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView(listing: listing)
                        }
                    }
                }
            }.scrollIndicators(.hidden)
            .padding(.horizontal)
            .navigationDestination(for: Listing.self) { listing in
                ListingDetailView(listing: listing)
                    .navigationBarBackButtonHidden()
                //                    .toolbarBackground(.hidden)
                
            }
            }
        }
        .tint(.primary)
    }
}

#Preview {
    ExploreView()
}
