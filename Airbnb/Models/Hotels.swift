//
//  Hotels.swift
//  Airbnb
//
//  Created by Luong Vu on 1/31/24.
//

import Foundation
 
struct Hotel: Identifiable, Codable, Hashable{
    let id: String
    var owner: Owner
    let numbersOfBedrooms: Int
    let numbersOfBadroom: Int
    let numbersOfGuests: Int
    let numbersOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageUrls: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    let rating: Double
    var fearutes: [HotelFeatures]
    var amenities: [HotelAmenities]
    var type: HotelType
}

struct Owner: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let avatarUrl: String
    
}

enum HotelFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subTitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad."
        case .superHost: return "Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests."
        }
    }
    
    var id: Int {return self.rawValue}
}

enum HotelAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkmark.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    var id: Int {return self.rawValue}
}

enum HotelType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town House"
        case .villa: return "Villa"
        }
    }
    
    var id: Int {return self.rawValue}
}
