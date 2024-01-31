//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let hotel: Hotel
    
    var body: some View {
        TabView{
            ForEach(hotel.imageUrls, id: \.self){image in
                 Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        
        .tabViewStyle(.page)
    }
}

struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView(hotel: DeveloperPreview.shared.hotels[0])
    }
}
