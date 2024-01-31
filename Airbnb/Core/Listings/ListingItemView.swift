//
//  ListingView.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI

struct ListingItemView: View {
    let hotel: Hotel
    var body: some View {
        VStack(spacing: 8){
            //image
            ListingImageCarouselView(hotel: hotel)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing detail
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("\(hotel.city), \(hotel.state)").fontWeight(.bold).foregroundColor(.blue)
                    Text("\(hotel.address)").foregroundColor(.gray.opacity(0.7))
                    Text("Nov 3 - 10").foregroundColor(.gray.opacity(0.7))
                    HStack(spacing: 4){
                        Text("\(hotel.pricePerNight)").fontWeight(.semibold)
                        Text(" night")
                    }
                    .foregroundColor(.blue)
                }
                
                Spacer()
                
                //rating
                HStack( spacing: 2){
                    Image(systemName: "star.fill")
                    Text("\(hotel.rating)")
                }
                .foregroundColor(.orange)
            }
            .font(.footnote)
            
        }
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(hotel: DeveloperPreview.shared.hotels[0])
    }
}
