//
//  ListingDetail.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI
import MapKit

struct ListingDetail: View {
    let hotel: Hotel
    @Environment(\.dismiss) var dimiss
    @State private var cameraPosition: MapCameraPosition
    
    init(hotel: Hotel) {
        self.hotel = hotel
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: hotel.latitude, longitude: hotel.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
        self._cameraPosition = State(initialValue: .region(region))
    }
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(hotel: hotel)
                    .frame(height: 320)
                Button{
                    dimiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width:32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("\(hotel.title)")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading){
                    HStack( spacing: 2){
                        Image(systemName: "star.fill")
                        Text("\(hotel.rating)")
                        Text("-")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.orange)
                    
                    Text("\(hotel.city), \(hotel.state)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack{
                VStack{
                    Text("Entire \(hotel.type.description) hosted by \(hotel.owner.name)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(){
                        Text("\(hotel.numbersOfGuests) guests -")
                        Text("\(hotel.numbersOfBedrooms) bedrooms -")
                        Text("\(hotel.numbersOfBeds) beds -")
                        Text("\(hotel.numbersOfBadroom) baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("\(hotel.owner.avatarUrl)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //listing feature
            VStack(alignment: .leading,spacing: 16){
                ForEach(hotel.fearutes){ feature in
                    HStack(spacing: 12){
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading){
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text(feature.subTitle)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Where you'll sleep").font(.headline)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(1 ... hotel.numbersOfBedrooms, id: \.self) {bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
//                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // bedroom vides^^^^
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(hotel.amenities){amenity in
                    HStack{
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        Text(amenity.title)
                            .font(.footnote)
                        Spacer()
                    }
                    
                }
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                Map(position: $cameraPosition) 
                    .frame( height: 200 )
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 44)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(hotel.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button {
                         
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

struct ListingDetail_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetail(hotel: DeveloperPreview.shared.hotels[0])
    }
}
