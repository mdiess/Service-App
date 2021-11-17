//
//  services.swift
//  Final
//
//  Created by Max Diess on 11/16/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct services: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var place: String
    var city: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
