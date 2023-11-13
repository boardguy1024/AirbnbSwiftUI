//
//  ProfileView.swift
//  AirbnbSwiftUI
//
//  Created by park kyung seok on 2023/11/13.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            profileHeaderLoginView
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Acessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

extension ProfileView {
    var profileHeaderLoginView: some View {
        VStack(alignment: .leading, spacing: 32) {
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Profile")
                    .font(.largeTitle)
                .fontWeight(.semibold)
                
                Text("Log in to start planning your next trip")
            }
            
            Button {
                
            } label: {
                Text("Log in")
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 48)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            
            HStack {
                Text("Don't have an account?")
                
                Text("Sign up")
                    .fontWeight(.semibold)
                    .underline()
            }
            .font(.caption)
        }
    }

}




#Preview {
    ProfileView()
}
