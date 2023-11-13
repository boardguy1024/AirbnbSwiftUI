//
//  Listing.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/13.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    let latitude: Double
    let longitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    
    var pricePerNight: Int
    var rating: Double
    
    var imageUrls: [String]
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    var type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superhost // 一定の認定基準を満たす、認められたホストに付与される「認定バッジ」
    
    var title: String {
        switch self {
        case .selfCheckIn: "SelfCheckIn"
        case .superhost: "Superhost"
        }
    }
    
    var imageName: String {
        switch self {
        case .selfCheckIn: "medal"
        case .superhost: "medal"
        }
    }
    
    var description: String {
        switch self {
        case .selfCheckIn: "Superhosts are experience, highly rated hosts who are commited to providing great starts for guests"
        case .superhost: "Superhosts are experience, highly rated hosts who are commited to providing great starts for guests"
        }
    }
    var id: Int { rawValue }
}

// Amenity: 設備・アメニティ
enum ListingAmenities: Int, Codable, Identifiable, Hashable {
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
        case .pool: "Pool"
        case .kitchen: "Kitchen"
        case .wifi: "Wifi"
        case .laundry: "Laundry"
        case .tv: "TV"
        case .alarmSystem: "AlarmSystem"
        case .office: "Office"
        case .balcony: "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: "figure.pool.swim"
        case .kitchen: "fork.knife"
        case .wifi: "wifi"
        case .laundry: "washer"
        case .tv: "tv"
        case .alarmSystem: "checkerboard.shield"
        case .office: "pencil.and.ruler.fill"
        case .balcony: "building"
        }
    }
    
    var id: Int { rawValue }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var desciption: String {
        switch self {
        case .apartment: "Apartment"
        case .house: "House"
        case .townHouse: "TownHouse"
        case .villa: "Villa"
        }
    }
    
    var id: Int { rawValue }
}

