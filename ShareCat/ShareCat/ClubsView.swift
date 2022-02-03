//
//  ClubsView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 11/16/21.
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit



//Stores data for a single club, may need to add more variables, an array of clubs will be initialized to store all clubs
struct Club: Identifiable{
    var id = UUID()
    //may not need this, could be replaced by uuid id, use id.uuidstring to convert club.id to string
    let ClubID: Int
    let ClubName: String
    //add more variables (club descriptions, club leader(first and last name), club contact phone, club contact email)
}

struct MyClubs: Identifiable{
    var id = UUID()
    let userid: Int
    //may not need this, could be replaced by uuid id, use id.uuidstring to convert club.id to string
    let MemberOf: Int
    //let ClubName: String
    //add more variables (club descriptions, club leader(first and last name), club contact phone, club contact email)
}

let clubs = [Club(ClubID: 0, ClubName: "UC Chess Club"),
             Club(ClubID: 1, ClubName: "UC Rowing Club Sport"),
             Club(ClubID: 3, ClubName: "Esports @ UC")]

let zachsclubs = [MyClubs(userid: 0, MemberOf: 1), MyClubs(userid: 0, MemberOf: 3)]

let num_clubs: Int = 2


struct ClubsView: View{
    
    
    var body: some View{
        //Text("This is the clubs view")
        //Text("This is the clubs view")
        
        //retreive data from database here
        
        
        //let uuid = NSUUID().uuidString
        VStack{
            
            Text("Clubs")
                //.bold()
                .font(.system(size: 30))
                .foregroundColor(.white)
                .frame(width: 300, height: 55)
                .background(Color.red)
                .cornerRadius(15.0)
                .offset(y: -20)
            
            NavigationLink(destination: MyClubsView(), label: {
                Text("My Clubs")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
            })//end navlink
           
                           
            List(clubs){ club in
                Text(club.ClubName)
                //Text(club.id.uuidString)
            }
            
            
        }//end vstack
        
        
        
    }//end body
}//end view


@MainActor class UISearchBar: UIView{
    
    
}

@MainActor class UITableView : UIScrollView{
                

}



struct MyClubsView: View{
    
    //trying to traverse array find matches between memberof on myclubs struct and clubID on club struct
    
    var body: some View{
        
        Text("These are my clubs")
        VStack{
            
            List(zachsclubs){ myclubs in
                Text(String(myclubs.MemberOf))
                //Text(myclubs.id.uuidString)
                
                /*var i = 0
                 
                 while i < clubs.count {
                 if zachsclubs[].MemberOf == clubs[i].ClubID {
                 Text(clubs.ClubName[zachsclubs[i].MemberOf])
                 }
                 }
                 */
                
                
                //String(myclubs.MemberOf)
                
            }
            //Text(myclubs.id.uuidString)
        }
        
    }
}//end my clubs view
