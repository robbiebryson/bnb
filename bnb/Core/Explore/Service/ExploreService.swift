//
//  ExploreService.swift
//  bnb
//
//  Created by Rob Bryson on 3/6/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
