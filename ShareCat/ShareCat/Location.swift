//
//  Location.swift
//  ShareCat
//
//  Created by Johnathan Rozier on 1/28/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {

  let name: String
  let cityName: String
  let coordinates: CLLocationCoordinate2D
  let description: String
  let imageNames: [String]
  let link: String

// Identifable
var id: String {
// name = "Colosseum"
// cityName = "Rome"
// id = "Colosseum Rome"
name + cityName
}

// Equatable
static func == (lhs: Location, rhs: Location) -> Bool {
  lhs.id == rhs.id
}
}
