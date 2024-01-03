//
//  ListingView.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8){
            //image
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing detail
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Miami, Florida").fontWeight(.bold).foregroundColor(.blue)
                    Text("12 mi away").foregroundColor(.gray.opacity(0.7))
                    Text("Nov 3 - 10").foregroundColor(.gray.opacity(0.7))
                    HStack(spacing: 4){
                        Text("$55").fontWeight(.semibold)
                        Text(" night")
                    }
                    .foregroundColor(.blue)
                }
                
                Spacer()
                
                //rating
                HStack( spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.5")
                }
                .foregroundColor(.orange)
            }
            .font(.footnote)
            
        }
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView()
    }
}
