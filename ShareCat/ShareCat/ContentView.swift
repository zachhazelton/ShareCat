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
                    
                            NavigationLink(destination: Text("Calendar Page"), label: {
                                Text("Calendar")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.red)
                                    .foregroundColor(.white)
                                    .navigationBarTitle("ShareCat", displayMode: .large)
                                    
                            })
                            NavigationLink(destination: Text("Map Page"), label: {
                                Text("Map")
                                    .bold()
                                    .frame(width: 300, height: 100 )
                                    .background(Color.black)
                                    .foregroundColor(.white)
                            })
                           
                            NavigationLink(destination: Text("Clubs Page"), label:  {
                                Text("Clubs")
                                    .bold()
                                    .frame(width: 300, height: 100)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                            })
                        NavigationLink(destination: Text("Campus Resources Page"), label:  {
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

//Home button code for main menu
/*struct Main_Menu: View {
    var home_button:

}
 */

