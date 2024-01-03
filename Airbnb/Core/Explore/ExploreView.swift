//
//  ExploreView.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            SearchAndFilterBar()
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self){ listing in
                        NavigationLink(value: listing){
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){listing in
                Text("Listing detail")
            }
            
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
