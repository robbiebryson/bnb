//
//  WishlistView.swift
//  bnb
//
//  Created by Rob Bryson on 3/3/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view, or edit wishlists when you've logged in.")
                        .font(.footnote)
                    
                }
                Button {
                    print("Log In")
                } label: {
                  Text("Log In")
                        .modifier(PinkButtonBNBViewModifier())
                }
                .padding(.bottom, 100)
//Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
        
    }
}
#Preview {
    WishlistView()
}
