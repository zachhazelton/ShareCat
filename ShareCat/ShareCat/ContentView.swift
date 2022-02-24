//
//  ContentView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 10/20/21.
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit
import DeadSimpleCalendar

struct ContentView: View {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                Color.white.ignoresSafeArea()
        //VStack{
                //NavigationLink(destination: Text("Calendar Page")) {
                    //Text("Calendar")
                      //  .padding()
                     //   .navigationBarTitle("Home", displayMode: .large)
                        
                VStack(alignment: .leading){
                
                    /*HStack{
                        Text("ShareCat")
                            .bold()
                            .font(.system(size: 30))
                            .frame(width: 200, height: 30)
                            .foregroundColor(.red)
                            .background(Color.white)
                            .cornerRadius(10.0)
                        Spacer()
                        
                        Button("LOGOUT"){
                                                        //LoginView()
                        }
                            
                            .foregroundColor(.red)
                            .background(Color.white)
                            .cornerRadius(10.0)
                            .font(.system(size:25))
                            
                    }*/
                    
                    Text("ShareCat")
                        .bold()
                        .font(.system(size: 30))
                        .frame(width: 375, height: 75)
                        .foregroundColor(.gray)
                        .background(Color.white)
                        .cornerRadius(15.0)
                    
                    NavigationLink(destination: YourDeadSimpleCalendarView (), label: {
                        Text("Calendar")
                            .bold()
                            .frame(width: 375, height: 187.5)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(15.0)
                    })
                    HStack{
                        NavigationLink(destination: LocationsView()
                                        .environmentObject(vm)
                                     
                                       , label: {
                            Text("Map")
                                .bold()
                                .frame(width: 187.5, height: 187.5 )
                                .background(Color.black)
                                .foregroundColor(.white)
                            .cornerRadius(15.0)                            })
                        
                        NavigationLink(destination: ClubsView(), label:  {
                            Text("Clubs")
                                .bold()
                                .frame(width: 187.5, height: 187.5)
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(15.0)
                            
                        })
                        
                    }
                    NavigationLink(destination: ResourcesView(), label:  {
                        Text("Campus Resources")
                            .bold()
                            .frame(width: 375, height: 187.5)
                            .background(Color.red)
                            .foregroundColor(.white)
                        .cornerRadius(15.0)             })


                        
                        }//end second v stack
            } //end z stack
            .edgesIgnoringSafeArea(.top)
        }//end nav view
    }//end body
    
}//end view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        LoginView()
    }
}


























//Home button code for main menu
/*struct Main_Menu: View {
    var home_button:

}
 */

