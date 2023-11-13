//
//  ListingImageCarouselView.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/11.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    var images: [String]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .clipped()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(images: DeveloperPreview.shared.listings[0].imageUrls)
}
