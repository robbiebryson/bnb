//
//  DestinationSearchView.swift
//  bnb
//
//  Created by Rob Bryson on 2/25/24.
//

import SwiftUI


enum destinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: destinationSearchOptions = .location
    
    var body: some View {
        VStack {
            
            
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .tint(.primary)
            }
            
            
            
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.primary)
                                    
                                    HStack {
                                        Image(systemName: "magnifyingglass")
                                            .imageScale(.small)
                                        
                                        TextField("Search Destination", text: $destination)
                                            .font(.subheadline)
                                    }
                                    .frame(height: 44)
                                    .padding(.horizontal)
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                            .foregroundStyle(Color(.systemGray))
                                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add Destination")

                }
                
                }
            
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) {selectedOption = .location}
            }
            
//            date selection view
            
            VStack {
                if selectedOption == .dates {
                    HStack {
                        Text("Show Expanded View")
                        
                        Spacer()

                    }
                } else {
                    CollapsedPickerView(title: "When", description: "Add Dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .dates}
                }
            
            
//            number of guests view
            VStack {
                if selectedOption == .guests {
                    HStack {
                        Text("Show Expanded View")
                        
                        Spacer()
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add Guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .onTapGesture {
                    withAnimation(.snappy) {selectedOption = .guests}
                }
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.secondary)
                Spacer()
                
                Text(description)
                    .foregroundStyle(.primary)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
    }
}
