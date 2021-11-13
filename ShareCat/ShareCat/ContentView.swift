//
//  ContentView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 10/20/21.
//

import SwiftUI
import MapKit

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
                    
                            NavigationLink(destination: CalendarView(), label: {
                                Text("Calendar")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .navigationBarTitle("ShareCat", displayMode: .large)
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
        import UIKit
import EventKit

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
}

struct ResourcesView: View{
    var body: some View{
        Text("This is the resources view")
        
    }
}

struct MapView: View{
    var body: some View{
        import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 39.1329, longitude: 84.51),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Map(coordinateRegion:$region)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
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

