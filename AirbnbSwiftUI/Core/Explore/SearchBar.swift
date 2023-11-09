//
//  SearchBar.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/09.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")

            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)

                Text("Anywhere - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }

            Spacer()
        }
        .padding(.all, 8)
        .background(
            Capsule()
                .fill(.white)
                .shadow(color: .gray.opacity(0.2), radius: 10)
        )
    }
}

#Preview {
    SearchBar()
}
