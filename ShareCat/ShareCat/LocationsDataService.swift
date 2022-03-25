//
//  LocationsDataService.swift
//  ShareCat
//
//  Created by Johnathan Rozier on 1/28/22.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Baldwin Hall",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1328, longitude: -84.5166),
            description: "Baldwin Hall is situated at the heart of Schneider Quad, formerly known as Baldwin Hall, adorned with beautiful white columns at its entrance.  It was the first building constructed for the Engineering Department at the University of Cincinnati.  Named for benefactor, Frances H. Baldwin, it was built in 1911 for the sole purpose of being utilized by the engineering department.",
            imageNames: [
                "BaldwinHall1",
                "BaldwinHall2",
                "BaldwinHall3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Tangeman University Center",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1320, longitude: -84.5172),
            description: "In the center of West Campus is Tangeman University Center.  Architects Harry Hake and Harry Hake Jr. built TUC in 1937 in response to a growing student population. The building was constructed with a Georgian Colonial style and highlighted by the large columns at the entrance and the clock tower.",
            imageNames: [
                "Tangeman1",
                "Tangeman2",
                "Tangeman3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Campus Recreation Center",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1324, longitude: -84.5154),
            description: "Campus Recreation Center Hall is perfect for students that desire productivity and focus in their day-to-day life.  It is located on MainStreet connected to the Rec Center and CenterCourt dining hall, making it the perfect environment for motivation. Being so close to the Rec inspires students to take advantage of its health benefits and helps them get involved in the countless events, activities and programs that our Rec Center has to offer.",
            imageNames: [
                "CampusRecreationCenter1",
                "CampusRecreationCenter2",
                "CampusRecreationCenter3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "French Hall",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1323, longitude: -84.5126),
            description: "In the center of East Campus is French Hall. This building is where you want to go for advising and testing.",
            imageNames: [
                "FrenchHall1",
                "FrenchHall2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Nippert Stadium",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1314, longitude: -84.5170),
            description: "Nippert Stadium is an outdoor stadium in Cincinnati, Ohio, on the campus of the University of Cincinnati. Primarily used for American football, it is the home field of the Cincinnati Bearcats football team.",
            imageNames: [
                "NippertStadium1",
                "NippertStadium2",
                "NippertStadium3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
    ]
    
}
