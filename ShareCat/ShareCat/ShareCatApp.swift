//
//  ShareCatApp.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 10/20/21.
//

import SwiftUI

@main
struct ShareCatApp: App {
    
    @StateObject private var vm = LocationsViewModel()
   
    //@StateObject clubs: [String]
    
    var body: some Scene {
        WindowGroup {
          LoginView()
        }
    }
}

