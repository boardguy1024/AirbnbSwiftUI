//
//  DeveloperPreview.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/13.
//

import Foundation

// Mockデータ
class DeveloperPreview {
    
    static let shared = DeveloperPreview()
    
    private init() { }
    
    var listings: [Listing] = [
        .init(id: UUID().uuidString,
              ownerUid: "123",
              ownerName: "Paku",
              ownerImageUrl: "profile",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: 35.30889,
              longitude: 139.55028,
              address: "Zaimokuza",
              city: "Kamakura-shi",
              state: "Kanagawa-ken",
              title: "Hayama Villa",
              pricePerNight: 567,
              rating: 4.89,
              imageUrls: ["image1", "image2", "image3", "image4"],
              features: [.selfCheckIn, .superhost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa),
        
        .init(id: UUID().uuidString,
              ownerUid: "123",
              ownerName: "Tanaka",
              ownerImageUrl: "profile",
              numberOfBedrooms: 4,
              numberOfBathrooms: 2,
              numberOfGuests: 3,
              numberOfBeds: 4,
              latitude: 35.30889,
              longitude: 139.55028,
              address: "Zaimokuza",
              city: "Kamakura-shi",
              state: "Kanagawa-ken",
              title: "Hayama Villa",
              pricePerNight: 321,
              rating: 4.54,
              imageUrls: ["image2", "image4", "image3", "image4"],
              features: [.selfCheckIn, .superhost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .house),
        
        .init(id: UUID().uuidString,
              ownerUid: "123",
              ownerName: "Paku",
              ownerImageUrl: "profile",
              numberOfBedrooms: 4,
              numberOfBathrooms: 3,
              numberOfGuests: 4,
              numberOfBeds: 4,
              latitude: 35.30889,
              longitude: 139.55028,
              address: "Zaimokuza",
              city: "Kamakura-shi",
              state: "Kanagawa-ken",
              title: "Hayama Villa",
              pricePerNight: 567,
              rating: 4.89,
              imageUrls: ["image3", "image2", "image1", "image4"],
              features: [.selfCheckIn, .superhost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa),
        
        .init(id: UUID().uuidString,
              ownerUid: "123",
              ownerName: "Tanaka",
              ownerImageUrl: "profile",
              numberOfBedrooms: 4,
              numberOfBathrooms: 2,
              numberOfGuests: 3,
              numberOfBeds: 4,
              latitude: 35.30889,
              longitude: 139.55028,
              address: "Zaimokuza",
              city: "Kamakura-shi",
              state: "Kanagawa-ken",
              title: "Hayama Villa",
              pricePerNight: 321,
              rating: 4.54,
              imageUrls: ["image4", "image3", "image2", "image1"],
              features: [.selfCheckIn, .superhost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .house)
    ]
}
