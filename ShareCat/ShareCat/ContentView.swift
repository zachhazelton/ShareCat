//
//  ContentView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 10/20/21.
//

import SwiftUI
import MapKit
import UIKit
import EventKit

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                Color.gray.ignoresSafeArea()
        //VStack{
                //NavigationLink(destination: Text("Calendar Page")) {
                    //Text("Calendar")
                      //  .padding()
                     //   .navigationBarTitle("Home", displayMode: .large)
                        
                VStack(alignment: .leading){
                    
                    Text("ShareCat")
                        .bold()
                        .font(.system(size: 30))
                        .frame(width: 300, height: 30)
                        .foregroundColor(.red)
                        .background(Color.white)
                        .cornerRadius(15.0)
                    
                    
                    NavigationLink(destination: CalendarView(), label: {
                                Text("Calendar")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .cornerRadius(15.0)
                            })
                            NavigationLink(destination: MapView(), label: {
                                Text("Map")
                                    .bold()
                                    .frame(width: 300, height: 100 )
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(15.0)                            })
                           
                    NavigationLink(destination: ClubsView(), label:  {
                                Text("Clubs")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(15.0)
                            
                            })
                    
                    
                        NavigationLink(destination: ResourcesView(), label:  {
                                Text("Campus Resources")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .cornerRadius(15.0)             })
                        }//end second v stack
                    //end of nav link calender 1 I took the "}" out
                //end VStack i took "}" out
            } //end z stack
        }//end nav view
    }//end body
    
}//end view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        LoginView()
    }
}

struct ClubsView: View{
   
    
    var body: some View{
        //Text("This is the clubs view")
       Text("This is the clubs view")
        
    }
    
}



struct CalendarView: View{
    var body: some View{
        Text("This is the Calendar View")
    }
}



struct EventLocation {
    let title: String
    let latitude: Double
    let longitude: Double
}

public struct CalendarEvent {
    public let title: String
    public let startDate: Date
    public let endDate:Date
    
    public init(title: String, startDate: Date, endDate: Date) {
        self.title = title;
        self.startDate = startDate;
        self.endDate = endDate;
    }
}

public protocol CalendarViewDataSource {
    func startDate() -> Date
    func endDate() -> Date
    /* optional */
    func headerString(_ date: Date) -> String?
}

extension CalendarViewDataSource {
    
    func startDate() -> Date {
        return Date()
    }
    func endDate() -> Date {
        return Date()
    }
    
    func headerString(_ date: Date) -> String? {
        return nil
    }
    }


struct ResourcesView: View{
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea()
        VStack(alignment: .leading){
        
            Text("Campus Resources")
                .bold()
                .font(.system(size: 30))
                .foregroundColor(.red)
                .frame(width: 300, height: 55)
                .background(Color.white)
            
            Link("One Stop", destination: URL(string: "https://onestop.uc.edu")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            
            Link("Accessibility Resources", destination: URL(string: "https://www.uc.edu/campus-life/accessibility-resources.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            
            Link("UC Public Safety", destination: URL(string: "https://www.uc.edu/about/publicsafety.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            
            Link("UC Campus Rec", destination: URL(string: "https://www.uc.edu/campus-life/campus-rec.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            
            Link("UC Health Services", destination: URL(string: "https://www.med.uc.edu/landing-pages/university-health/home")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            
            Link("UC Nightride", destination: URL(string: "https://www.uc.edu/about/publicsafety/services/night-ride.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            
            Link("Bearcat Card", destination: URL(string: "https://www.uc.edu/bearcatcard.html")!)
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
        }
        }
    }
}

struct MapView: View{
    var body: some View{
       // import SwiftUI
        Text("this is the maps view")
        
        //past map view code here
    }
}








struct LoginView: View{
    @State private var username: String = ""
    @State private var password: String = ""
    @State var authenticated: Bool = false
    
    var body: some View{
        
        if !authenticated{
        VStack{
           
            Text("Login")
                .font(.system(size: 64, weight: .semibold))
                .foregroundColor(.black)
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Username", text: $username)
                
            }
            HStack {
                Image(systemName: "lock")
                SecureField("Password", text: $password)
            }
            HStack{
                Button(action: {self.authenticated = true
    
                }){
                Text("LOGIN")
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.red)
                .cornerRadius(15.0)            }
                
                
                    
                }//end nav view
                    }
        }//end if
        
        else{
            ContentView()
        }

        }
        
}





//Home button code for main menu
/*struct Main_Menu: View {
    var home_button:

}
 */

