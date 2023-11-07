//
//  LocationDetailedView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 11/6/23.
//

import SwiftUI

struct LocationDetailedView: View {
    
    let location: Location
    
    
    var body: some View {
            VStack {
                ScrollView {
                    VStack {
                        
                        // String Call
                        
                        Text(location.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text(location.cityName + ", " + location.stateName)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text(location.coordinateNumbers)
                            .font(.footnote)
                            .fontWeight(.thin)
                            .padding(2)
                        
                        // Image Call
                        
                        if let imageName = location.imageNames.first {
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250, height: 100)
                        }
                        
                        // String Call
                        
                        Text("Rating: " + location.rating)
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(2)
                        
                        Link ("Youtube", destination: URL(string: location.link)!)
                            .font(.subheadline)
                
                        
                        // Trail Description
                        
                        VStack(alignment: .leading, spacing: 15) {
                            
                            Text("Trial Description:")
                                .font(.footnote)
                                .fontWeight(.thin)
                            
                            Text(location.description)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                        .padding()
                        
                         // Trail Requirements
                        
                        VStack(alignment: .leading, spacing: 15) {
                            
                            Text("Trail Requirements:")
                                .font(.footnote)
                                .fontWeight(.thin)
                            
                            Text(location.requirement)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.vertical, 25)
                }
                //Framing for the Vstack
                        .frame(width: 320, height: 525)
                        .background(Color(.systemBackground))
                        .cornerRadius(25)
                        .shadow(radius: 40)
        }
    }
}

#Preview {
    LocationDetailedView(location: LocationsDataService.locations.first!)
}
