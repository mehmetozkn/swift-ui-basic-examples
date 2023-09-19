//
//  SuperHeroModel.swift
//  SuperHeroApp
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperHero: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var city: String
    var job: String
    var coordinate: HeroCoordinate
    
    var coordinateLocation: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
}


struct HeroCoordinate {
    var latitude: Double
    var longitude: Double
}


let batman = SuperHero(name: "Batman", imageName: "batman", city: "Gotham", job: "Job Man", coordinate: HeroCoordinate(latitude: 41.871369, longitude: -87.76))

let superman = SuperHero(name: "Superman", imageName: "superman", city: "Kansas", job: "journalist", coordinate: HeroCoordinate(latitude: 39.08, longitude: -94.7080))

let spiderman = SuperHero(name: "Spdierman", imageName: "spiderman", city: "New York", job: "Photographer", coordinate: HeroCoordinate(latitude: 40.7160, longitude: -73.0524))


let herosArray = [batman, superman, spiderman]
