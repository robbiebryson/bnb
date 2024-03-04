//
//  ExploreView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false

    
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
                    ForEach(0...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                        }
                    }
                }
            }.scrollIndicators(.hidden)
            .padding(.horizontal)
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
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
