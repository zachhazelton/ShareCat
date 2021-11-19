//
//  MapView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 11/17/21.
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit

struct MapView: View{
       
        @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 39.1329, longitude: 84.51),
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

        var body: some View {
            Map(coordinateRegion:$region)
        }
        
            
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // do nothing
    }
    
   
    
    

}
