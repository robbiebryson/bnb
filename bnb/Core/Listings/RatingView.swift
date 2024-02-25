//
//  RatingView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            
            Text("4.86")
                .fontWeight(.semibold)
        }
    }
}


#Preview {
    RatingView()
}
