//
//  ListingImageCarouselView.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/11.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images = [String]()
    
    var body: some View {
        TabView {
            ForEach(1...4, id: \.self) {
                Image("image\($0)")
                    .resizable()
                    .scaledToFill()
                    .clipped()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
