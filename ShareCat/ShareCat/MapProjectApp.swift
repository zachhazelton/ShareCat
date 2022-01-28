//
//  MapProjectApp.swift
//  ShareCat
//
//  Created by Johnathan Rozier on 1/28/22.
//

import SwiftUI

struct MapProjectApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}

