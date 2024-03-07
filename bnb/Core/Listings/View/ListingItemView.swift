//
//  ListingItemView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            //images
            ListingImageCarouselView(listing: listing)
            .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //listing details
            
            HStack (alignment: .top) {
                //details
                VStack (alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("Night")
                    }
                  

                    
                }
                
                Spacer()
                
                //ratings
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("\(listing.rating)")
                        .fontWeight(.semibold)
                }
            }
            .font(.footnote)
        }
     
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}


//struct RatingView: View {
//    var body: some View {
//        HStack(spacing: 2) {
//            Image(systemName: "star.fill")
//            
//            Text("\(listing.rating)")
//                .fontWeight(.semibold)
//        }
//    }
//}
//    
