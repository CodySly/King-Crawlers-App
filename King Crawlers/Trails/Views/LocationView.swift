//
//  LocationView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocationView: View {
    
    
    @EnvironmentObject private var vm: TrailLocationViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion,
                annotationItems: vm.locations,
                annotationContent: { location in
                MapMarker(coordinate: location.coordinates)
            })
                .ignoresSafeArea()
            
            
            VStack(spacing: 0) {
                header

                Spacer()
                
                ZStack {
                    ForEach(vm.locations) { location in
                        if vm.mapLocation == location {
                            LocationPreviewView(location: location)
                                .shadow(color: Color.black.opacity(0.3),
                                        radius: 20)
                                .padding()
                                .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                        }
                    }
                }
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(TrailLocationViewModel())
    }
}

extension LocationView {
    
    private var header: some View {
        
        VStack {
            Button(action: vm.toggleLocationList) {
                VStack(spacing: 0) {
                    Text(vm.mapLocation.name)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .padding(.top,5)
                        .animation(.none, value: vm.mapLocation)
                    Text(vm.mapLocation.cityName + ", " + vm.mapLocation.stateName)
                        .font(.footnote)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .frame(height: 25)
                        .frame(maxWidth: .infinity)
                        .overlay(alignment: .leading) {
                            Image(systemName: "arrow.right")
                                .font(.headline)
                                .foregroundColor(.primary)
                                .padding()
                                .padding(.bottom, 25)
                                .rotationEffect(Angle(degrees:
                                                        vm.showLocationList ? 90: 0))
                        }
                }

            }
            .frame(width: 285, height: 75)
            if vm.showLocationList {
                LocationsListView()
            }
        }
        
        .background(.thickMaterial)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
}


