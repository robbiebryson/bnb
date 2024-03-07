//
//  MainTabView.swift
//  bnb
//
//  Created by Rob Bryson on 3/3/24.
//

import SwiftUI

struct MainTabView: View {
  
    var body: some View {
        NavigationStack {
            TabView{
                ExploreView()
                    .tabItem { Label("Explore", systemImage: "magnifyingglass") }
                
                WishlistView()
                    .tabItem { Label("Wishlists", systemImage: "heart") }
                
                
                ProfileView()
                    .tabItem { Label("Profile", systemImage: "person") }
                
            }
        }
    }
}
#Preview {
    MainTabView()
}
