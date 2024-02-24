//
//  ListingDetailView.swift
//  bnb
//
//  Created by Rob Bryson on 2/24/24.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    
    var body: some View {
        ScrollView{
            ListingImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack {
                        RatingView()
                        Text("-")
                        Text("28 Reviews")
                    }
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            //Host Info View
            HStack {
                VStack (alignment: .leading, spacing: 2){
                    Text("Entire Villa hosted by John Smith")
                        .font(.headline)
                  .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("4.5 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                
                Image("ProfilePhoto1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //Listing Features View
            
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are highly-rated hosts who are committed to providing great experiences for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding()
        }
    }
}
#Preview {
    ListingDetailView()
}
