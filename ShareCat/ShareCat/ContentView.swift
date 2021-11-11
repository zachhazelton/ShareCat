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
                           
                    NavigationLink(destination: LoginView(), label:  {
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
        
        ContentView()
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
        Text("This is the calendar view")
    }
}

struct ResourcesView: View{
    var body: some View{
        Text("This is the resources view")
        
    }
}

struct MapView: View{
    var body: some View{
        Text("This is the map view")
    }
}


struct LoginView: View{
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View{
        
                
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
                /*Button(action: {print("Login Successful")}){
                Text("LOGIN")
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.red)
                .cornerRadius(15.0)            }
                */
                NavigationView{
                    NavigationLink(destination: ClubsView(), label:{
                        Text("Login")
                            .bold()
                            .frame(width: 300, height: 100)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(15.0)
                    
                    })
                    
                }//end nav view
                    }
                
            
    }
        
}
}




//Home button code for main menu
/*struct Main_Menu: View {
    var home_button:

}
 */

