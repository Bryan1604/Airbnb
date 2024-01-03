//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
         "Image-1",
         "Image-2",
         "Image-3",
         "Image-4",
    ]
    var body: some View {
        TabView{
            ForEach(images , id: \.self){image in
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
        ListingImageCarouselView()
    }
}
