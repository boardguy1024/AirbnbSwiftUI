//
//  ExploreService.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/13.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
