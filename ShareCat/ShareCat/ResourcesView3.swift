//
//  ResourcesView3.swift
//  ShareCat
//
//  
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit


struct ResourcesView3: View{
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
            ScrollView{
        
                Text("Campus Resources")
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.red)
                    .frame(width: 375, height: 55)
                    .background(Color.white)
                    .cornerRadius(15.0)
                
                Link("Nightride", destination: URL(string: "https://www.uc.edu/about/publicsafety/services/night-ride.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("One Stop", destination: URL(string: "https://onestop.uc.edu")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Public Safety", destination: URL(string: "https://www.uc.edu/about/publicsafety.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Registrar's Office", destination: URL(string: "https://www.uc.edu/about/registrar.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Resident Halls/Housing", destination: URL(string: "https://www.uc.edu/campus-life/housing/residential-experience/communities.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Student Government", destination: URL(string: "https://www.uc.edu/campus-life/student-government.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Student Wellness Center", destination: URL(string: "https://www.uc.edu/campus-life/wellness.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Testing Services", destination: URL(string: "https://www.uc.edu/campus-life/testing-services.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)

                HStack{
                    
                    NavigationLink(destination: ContentView(), label:  {
                                Text("Home")
                                    .bold()
                                    .frame(width: 50, height: 30)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                                })
                    NavigationLink(destination: ResourcesView(), label:  {
                                Text("1")
                                    .bold()
                                    .frame(width: 30, height: 30)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                                })
                    NavigationLink(destination: ResourcesTwoView(), label:  {
                                Text("2")
                                    .bold()
                                    .frame(width: 30, height: 30)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                        })
                 NavigationLink(destination: ResourcesView3(), label:  {
                                Text("3")
                                    .bold()
                                    .frame(width: 30, height: 30)
                                    .background(Color.gray)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                                })
                }
            
            
            
            }
            //.offset(y:-5)
        }
    }
}
