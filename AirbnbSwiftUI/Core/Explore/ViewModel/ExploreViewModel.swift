//
//  ExploreViewModel.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/13.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    private let service: ExploreService
    
    @Published var listings = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchListings()
        }
    }
    
    @MainActor
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("do some error handling..")
        }
    }
}
