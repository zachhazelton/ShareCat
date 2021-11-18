//
//  ResourcesView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 11/17/21.
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit


struct ResourcesView: View{
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
            ScrollView{
        
            Text("Campus Resources")
                .bold()
                .font(.system(size: 30))
                .foregroundColor(.red)
                .frame(width: 300, height: 55)
                .background(Color.white)
                .cornerRadius(15.0)
            
            Link("One Stop", destination: URL(string: "https://onestop.uc.edu")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
            
            Link("Accessibility Resources", destination: URL(string: "https://www.uc.edu/campus-life/accessibility-resources.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
            
            Link("UC Public Safety", destination: URL(string: "https://www.uc.edu/about/publicsafety.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
            
            Link("UC Campus Rec", destination: URL(string: "https://www.uc.edu/campus-life/campus-rec.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
            
            Link("UC Health Services", destination: URL(string: "https://www.med.uc.edu/landing-pages/university-health/home")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
            
            Link("UC Nightride", destination: URL(string: "https://www.uc.edu/about/publicsafety/services/night-ride.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
            
            Link("Bearcat Card", destination: URL(string: "https://www.uc.edu/bearcatcard.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(15.0)
        }
            //.offset(y:-5)
        }
    }
}
