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

struct MapView: UIViewRepresentable {
    typealias UIViewType = UIView
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let coordinate = CLLocationCoordinate2D(latitude: 39.13379, longitude: -84.51660)
        
        let map = MKMapView()
        map.setRegion(MKCoordinateRegion(center: coordinate,
                                         span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004)),
                      animated: true
        )
        
        view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        return view
        
            
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // do nothing
    }
    
   
    
    

}
