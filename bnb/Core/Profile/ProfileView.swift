//
//  ProfileView.swift
//  bnb
//
//  Created by Rob Bryson on 3/3/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //Profile Login View
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start your next adventure")
                }
                Button {
                    print("Log In")
                } label: {
                    Text("Log In")
                        .modifier(PinkButtonBNBViewModifier())
                }
                HStack {
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            //profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "accessibility", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}
#Preview {
    ProfileView()
}
struct PinkButtonBNBViewModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.background)
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360, height: 48)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
