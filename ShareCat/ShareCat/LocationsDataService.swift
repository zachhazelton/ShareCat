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
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            name: "Tangeman University Center",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1320, longitude: -84.5172),
            description: "In the center of West Campus is Tangeman University Center.  Architects Harry Hake and Harry Hake Jr. built TUC in 1937 in response to a growing student population. The building was constructed with a Georgian Colonial style and highlighted by the large columns at the entrance and the clock tower.",
            imageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            name: "Campus Recreation Center",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1324, longitude: -84.5154),
            description: "Campus Recreation Center Hall is perfect for students that desire productivity and focus in their day-to-day life.  It is located on MainStreet connected to the Rec Center and CenterCourt dining hall, making it the perfect environment for motivation. Being so close to the Rec inspires students to take advantage of its health benefits and helps them get involved in the countless events, activities and programs that our Rec Center has to offer.",
            imageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            name: "French Hall",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1323, longitude: -84.5126),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            name: "Nippert Stadium",
            cityName: "Cincinnati",
            coordinates: CLLocationCoordinate2D(latitude: 39.1314, longitude: -84.5170),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            link: "https://en.wikipedia.org/wiki/Louvre"),
    ]
    
}
