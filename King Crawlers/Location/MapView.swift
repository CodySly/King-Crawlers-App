//
//  MapView.swift
//  King Crawlers
//
//  Created by Cody Burgess on 10/17/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    
    @EnvironmentObject private var vm: TrailLocationViewModel
    @Namespace var mapScope

    var body: some View {
        Map {
            //            ForEach(vm.locations) { location in
            //                Marker("Trails", coordinate: location.coordinates)
            //            }
        }
            .mapControls {
                MapCompass()
                MapUserLocationButton(scope: mapScope)
                MapPitchToggle(scope: mapScope)
            }
            .mapStyle(.imagery(elevation: .automatic))
            .mapScope(mapScope)
        }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .environmentObject(TrailLocationViewModel())
    }
}
