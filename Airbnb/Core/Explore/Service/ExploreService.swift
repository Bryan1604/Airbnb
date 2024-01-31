//
//  ExploreService.swift
//  Airbnb
//
//  Created by Luong Vu on 1/31/24.
//

import Foundation

class ExploreService {
    func fetchHotels() async throws -> [Hotel] {
        return DeveloperPreview.shared.hotels
    }
}
