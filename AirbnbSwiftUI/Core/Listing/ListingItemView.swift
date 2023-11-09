//
//  ListingItemView.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/09.
//

import SwiftUI

struct ListingItemView: View {
    
    @State var selectedImage: Int = 0
    
    var body: some View {
        VStack(spacing: 8) {
            
            TabView(selection: $selectedImage) {
                
                ForEach(1...4, id: \.self) {
                    Image("image\($0)")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("$123")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
        }
        .onChange(of: selectedImage) { _ in
            print("selectedImage: \(selectedImage)")
        }
    }
}

#Preview {
    ListingItemView()
}
