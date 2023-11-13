//
//  ListingDetailView.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/11.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ScrollView {
            
            ListingImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    
                    Text("Miami Florida")
                }
                .font(.caption)

            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack {
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 beds - ")
                        Text("4 baths - ")
                    }
                    .font(.caption)
                }
                
                Spacer()
                
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            VStack(spacing: 16) {
                ForEach(0..<2) { index in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        VStack(alignment: .leading) {
                            Text("Superhosts")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are experience, highly rated hosts who are commited to providing great starts for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                   
                       
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Divider()

            VStack(alignment: .leading) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1..<5) { bedroom in
                            VStack(alignment: .leading, spacing: 4) {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 130, height: 80)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill()
                                    .foregroundColor(.gray.opacity(0.1))
                            )
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()

            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(0..<5) { feature in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()

            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar) // TabBarをhidden
        .padding(.bottom, 80)
        .overlay(alignment: .top) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        )
                        .padding(32)
                }
                
                Spacer()
            }
            .padding(.top, 20)
            
        }
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote
                            )
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.trailing)
            }
            .background(.white)
            .padding(.bottom, 30)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ListingDetailView()
}
