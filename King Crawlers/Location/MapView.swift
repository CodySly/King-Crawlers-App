//
//  MapView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),  // Default location
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )

    struct CustomAnnotation: Identifiable {
        let id = UUID()
        var coordinate: CLLocationCoordinate2D
    }

    @State private var annotations: [CustomAnnotation] = []
    @State private var userTrackingMode: MapUserTrackingMode = .follow // Set the initial user tracking mode

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: $userTrackingMode, annotationItems: annotations) { annotation in
            MapPin(coordinate: annotation.coordinate, tint: .blue)
        }
        .edgesIgnoringSafeArea(.all)
        .mapStyle(.hybrid(elevation: .automatic))
        .onTapGesture { location in
            if let coordinate = mapViewCoordinate(from: location) {
                let newAnnotation = CustomAnnotation(coordinate: coordinate)
                annotations.append(newAnnotation)
            }
        }
    }

    private func mapViewCoordinate(from point: CGPoint) -> CLLocationCoordinate2D? {
        return mapView?.convert(point, toCoordinateFrom: nil)
    }
    
    // This computed property gives access to the MapView
    private var mapView: MKMapView? {
        UIView.appearance(whenContainedInInstancesOf: [MKMapView.self]) as? MKMapView
    }
}








#Preview {
    MapView()
}
