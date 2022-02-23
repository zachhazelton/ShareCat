//
//  ResourcesTwoView.swift
//  ShareCat
//
//  
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit


struct ResourcesTwoView: View{
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
                
                Link("Campus Rec", destination: URL(string: "https://www.uc.edu/campus-life/campus-rec.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Dining Services", destination: URL(string: "https://www.uc.edu/campus-life/food.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Ethnic Programs & Services", destination: URL(string: "https://www.uc.edu/campus-life/eps.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Fraternity & Sorority Life", destination: URL(string: "https://www.uc.edu/campus-life/fraternity-sorority-life.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Health Services", destination: URL(string: "https://www.med.uc.edu/landing-pages/university-health/home")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Learning Commons", destination: URL(string: "https://www.uc.edu/campus-life/learning-commons.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Library", destination: URL(string: "https://online.uc.edu/student-resources/library/")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Majors & Programs", destination: URL(string: "https://www.uc.edu/majors-programs/explore/majors.html")!)
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
                                    .background(Color.gray)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                        })
                 NavigationLink(destination: ResourcesView3(), label:  {
                                Text("3")
                                    .bold()
                                    .frame(width: 30, height: 30)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                                })
                }
        
            
            
            }
            //.offset(y:-5)
        }
    }
}
