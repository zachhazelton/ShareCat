//
//  LocationViewModel.swift
//  ShareCat
//
//  Created by Johnathan Rozier on 1/28/22.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {

    // All loaded locations
    @Published var locations: [Location]
    
    // Current Location on map
    @Published var mapLocation: Location {
    didSet {
        updateMapRegion(location: mapLocation)
    }
}

    // Current Region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show List of locations
    @Published var showLocationsList: Bool = false
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
        center: location.coordinates,
        span: mapSpan)
        }
    }
    
     func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }

    func nextButtonPressed() {
        
        // Get the current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation}) else {
            print("unable to find current index")
            return
        }
    
        // Check if nextIndex is caild
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            
            
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }

}
