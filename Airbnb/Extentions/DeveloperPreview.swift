//
//  DeveloperPreview.swift
//  Airbnb
//
//  Created by Luong Vu on 1/31/24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var hotels: [Hotel] = [
        .init(
            id: NSUUID().uuidString,
            owner: .init(
                id: NSUUID().uuidString,
                name: "Jame",
                avatarUrl: "male-profile-photo"
            ),
            numbersOfBedrooms: 1,
            numbersOfBadroom: 1,
            numbersOfGuests: 2,
            numbersOfBeds: 1,
            pricePerNight: 100,
            latitude: 37.757815,
            longitude: -122.507640, 
            imageUrls: ["Image-1", "Image-2", "Image-3", "Image-4"],
            address: "New Jeasie, CA, United States",
            city: "New Jeasie",
            state: "CA",
            title: "Modern Studio", 
            rating: 4.5,
            fearutes: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .alarmSystem, .tv, .laundry],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            owner: .init(
                id: NSUUID().uuidString,
                name: "Carol",
                avatarUrl: "male-profile-photo"
            ),
            numbersOfBedrooms: 2, 
            numbersOfBadroom: 2,
            numbersOfGuests: 4,
            numbersOfBeds: 2,
            pricePerNight: 200,
            latitude: 37.757815,
            longitude: -122.507640,
            imageUrls: ["Image-1", "Image-2", "Image-3", "Image-4"],
            address: "New York, CA, United States",
            city: "San Francisco",
            state: "CA",
            title: "Modern Studio", 
            rating: 4.5,
            fearutes: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .alarmSystem, .tv, .laundry],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            owner: .init(
                id: NSUUID().uuidString,
                name: "Anthony",
                avatarUrl: "male-profile-photo"
            ),
            numbersOfBedrooms: 2,
            numbersOfBadroom: 2,
            numbersOfGuests: 4,
            numbersOfBeds: 2,
            pricePerNight: 200,
            latitude: 6.757815,
            longitude: -122.507640,
            imageUrls: ["Image-1", "Image-2", "Image-3", "Image-4"],
            address: "San Francisco, CA, United States",
            city: "San Francisco",
            state: "CA",
            title: "Modern Studio",
            rating: 4.5,
            fearutes: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .alarmSystem, .tv, .laundry],
            type: .villa
        ),

    ]
}
