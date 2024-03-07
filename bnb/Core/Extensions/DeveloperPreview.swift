//
//  DeveloperPreview.swift
//  bnb
//
//  Created by Rob Bryson on 3/6/24.
//

import Foundation
class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "ProfilePhoto1",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936, 
            imageURLs: ["listing-4", "listing-2", "listing-1", "listing-3"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida", 
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem],
            type: .villa
),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "ProfilePhoto1",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7706,
            longitude: -80.1340,
            imageURLs: ["listing-1", "listing-2", "listing-3", "listing-4"],
            address: "128 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem],
            type: .villa
            ),
        
            .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "ProfilePhoto1",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 677,
            latitude: 34.2,
            longitude: -118.0426,
            imageURLs: ["listing-3", "listing-1", "listing-2", "listing-4"],
            address: "125 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beautiful Malibu Home",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem],
            type: .villa
            ),
        
            .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "ProfilePhoto1",
            numberOfBedrooms: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 517,
            latitude: 25.7344,
            longitude: -80.1223,
            imageURLs: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "122 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem],
            type: .villa
            ),
        
        
    ]
}
