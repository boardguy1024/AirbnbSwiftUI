//
//  ExploreView.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/09.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
     
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                VStack(spacing: 0) {
                    
                    headerView
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(spacing: 32)  {
                            ForEach(0 ... 10, id: \.self) { listing in
                                
                                NavigationLink(value: listing) {
                                    ListingItemView()
                                }
                            }
                        }
                        .padding()
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

extension ExploreView {
    var filterButton: some View {
        Button {
            
        } label: {
            Image(systemName: "slider.horizontal.3")
                .tint(.black)
                .frame(width: 35, height: 35)
        }
        .background(
            Capsule()
                .stroke(style: .init(lineWidth: 0.4))
        )
    }
    
    var headerView: some View {
        VStack {
            HStack {
                SearchBar()
                    .onTapGesture {
                        withAnimation(.snappy) {
                            showDestinationSearchView.toggle()
                        }
                    }
                filterButton
            }
            .padding(.horizontal)
            
            // TabButtons..
            
            Divider()
        }
    }
}

#Preview {
    ExploreView()
}
