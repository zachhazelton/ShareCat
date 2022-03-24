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
                    .frame(width: 375, height: 55)
                    .background(Color.white)
                    .cornerRadius(15.0)
                
                Link("AACRC", destination: URL(string: "https://www.uc.edu/campus-life/aacrc.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Academic Calendar", destination: URL(string: "https://www.uc.edu/about/registrar/calendars.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                
                Link("Accessibility Resources", destination: URL(string: "https://www.uc.edu/campus-life/accessibility-resources.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Athletics", destination: URL(string: "https://gobearcats.com/index.aspx")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Bearcat Card", destination: URL(string: "https://www.uc.edu/bearcatcard.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Bearcat Guardian", destination: URL(string: "https://www.uc.edu/about/publicsafety/services/guardian-app.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Bookstore", destination: URL(string: "https://www.bkstr.com/cincinnatistore/home")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                Link("Bursar's Office", destination: URL(string: "https://www.uc.edu/bursar.html")!)
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 375, height: 55)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
                
            
    
                HStack{
                    
                    /*NavigationLink(destination: ContentView(), label:  {
                                Text("Home")
                                    .bold()
                                    .frame(width: 50, height: 30)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(15.0)
                                })*/
                    
                    NavigationLink(destination: ResourcesView(), label:  {
                                Text("1")
                                    .bold()
                                    .frame(width: 30, height: 30)
                                    .background(Color.gray)
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
