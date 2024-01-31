//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Luong Vu on 1/31/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var hotels = [Hotel]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task {await fetchHotels()}
    }
    
    func fetchHotels() async {
        do {
            self.hotels = try await service.fetchHotels()
        } catch {
            print("Debug: Failed to fetch hotels with error: \(error.localizedDescription)")
        }
        
    }
}
