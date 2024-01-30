//
//  MainTapView.swift
//  Airbnb
//
//  Created by Luong Vu on 1/30/24.
//

import SwiftUI

struct MainTapView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
        
    }
}

#Preview {
    MainTapView()
}
