//
//  ListingItemView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "listing-1",
    "listing-2",
    "listing-3",
    "listing-4"
    ]
    
    
    
    
    var body: some View {
        VStack(spacing: 8) {
            //images
        ListingImageCarouselView()
            .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //listing details
            
            HStack (alignment: .top) {
                //details
                VStack (alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                  

                    
                }
                
                Spacer()
                
                //ratings
                RatingView()

            }
            .font(.footnote)
        }
     
    }
}

#Preview {
    ListingItemView()
}


    
