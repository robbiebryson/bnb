//
//  ExporeViewModel.swift
//  bnb
//
//  Created by Rob Bryson on 3/6/24.
//

import Foundation

class ExporeViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: FAILED TO FETCH LISTINGS WITH ERROR: \(error.localizedDescription)")
        }
    }
}
