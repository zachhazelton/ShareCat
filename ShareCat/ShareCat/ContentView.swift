//
//  ContentView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 10/20/21.
//

import SwiftUI

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
                                    
                            })
                            NavigationLink(destination: MapView(), label: {
                                Text("Map")
                                    .bold()
                                    .frame(width: 300, height: 100 )
                                    .background(Color.black)
                                    .foregroundColor(.white)
                            })
                           
                            NavigationLink(destination: ClubsView(), label:  {
                                Text("Clubs")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    
                               
                            
                            })
                    
                    
                        NavigationLink(destination: ResourcesView(), label:  {
                                Text("Campus Resources")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                    })
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





//Home button code for main menu
/*struct Main_Menu: View {
    var home_button:

}
 */

