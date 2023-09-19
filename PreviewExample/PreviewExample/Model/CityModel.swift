//
//  CityModel.swift
//  PreviewExample
//
//  Created by Mehmet Özkan on 19.09.2023.
//

import Foundation
import SwiftUI

struct City : Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var region: String
}

let istanbul = City(name: "İstanbul", imageName: "istanbul", region: "Marmara")
let ankara = City(name: "Ankara", imageName: "ankara", region: "İç Anadolu")

let cityList = [istanbul, ankara]
