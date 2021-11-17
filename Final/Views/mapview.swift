//
//  mapview.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import SwiftUI
import MapKit

struct mapview: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct mapview_Previews: PreviewProvider {
    static var previews: some View {
        mapview(coordinate: CLLocationCoordinate2D(latitude: 37.354107, longitude: -121.955238))
    }
}
