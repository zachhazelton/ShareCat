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
            NavigationLink(destination: Text("Calendar Page")) {
            Text("Calendar")
                .padding()
                .navigationBarTitle("Home", displayMode: .large)
                VStack(alignment: .leading){
                    NavigationLink(destination: Text("Map Page")) {
                        Text("Map")
                    }
                    NavigationLink(destination: Text("Campus Resources Page")) {
                        Text("Campus Resources")
                    }
                    NavigationLink(destination: Text("Clubs Page")) {
                        Text("Clubs")
                    }
                }
            }
        }//end nav view
    }//end body

}//end view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Home button code for main menu
/*struct Main_Menu: View {
    var home_button:

}
 */

