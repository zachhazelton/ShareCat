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
//import XCTest



//Stores data for a single club, may need to add more variables, an array of clubs will be initialized to store all clubs
struct Club: Identifiable{
    var id = UUID()
    var clubid: Int
    //may not need this, could be replaced by uuid id, use id.uuidstring to convert club.id to string
    var name : String
    var location: String
    var time: String
    var leader: String
    //add more variables (club descriptions, club leader(first and last name), club contact phone, club contact email)
}



//var clublist: URLSessionTask?
//var error: URLSessionTask?

/*func getclubsarray(clubslist: URLSessionTask) ->Void{
    getclubs() {(clubslist, error) -> Void in
        if let clubslist = clubslist {
            print("First club name is \(clubslist[0])")
        }
        
    }
    
}*/


struct ClubsView: View{
    

    @State public var allclubs: [Club] = []
    @State private var searchText = ""
  
                                          
    var body: some View{
    
        VStack{
            
            /*Text("Clubs")
                //.bold()
                .font(.system(size: 30))
                .foregroundColor(.white)
                .frame(width: 300, height: 55)
                .background(Color.red)
                .cornerRadius(15.0)
                .offset(y: -20)*/
            
            
        
            /*NavigationLink(destination: MyClubsView(), label: {
                Text("My Clubs")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(15.0)
                
            })//end navlink*/
           
            let mydata = getclubs(completionHandler: { (string, error) -> Void in
                if let string = string {
                    //here is the list of substrings now need to build a table with this
                    print(string[0])
                    let length = string.count
                    print("length is: \(length)")
                    //var allclubs: [Club] = []
                    var i: Int = 0
                    while(i < string.count-1){
                        /*allclubs[i].name = string[i]
                        print("Name is: \(allclubs[i].name)")
                        allclubs[i].location = string[i+1]
                        print(allclubs[i].location)
                        allclubs[i].time = string[i+2]
                        print(allclubs[i].time)
                        allclubs[i].leader = string[i+3]
                        print(allclubs[i].leader)
                        allclubs[i].clubid = Int(string[i+4]) ?? 0
                        print(allclubs[i].clubid)*/
                        allclubs.append(Club(clubid: Int(string[i+4]) ?? 0, name: string[i], location: string[i+1], time: string[i+2], leader: string[i+3]))
                        i+=5
                    }
                    //allclubs = string
                    
                    
                    //for presentation demo only: needs fixed
                    
                }
            })//end of le
            
            
                            
            List {
                Group{
                Text("Club Name: Chess Club")
                    .listRowBackground(Color.red)
                Text("Location: Evans Hall 301")
                Text("Meeting Time: 7PM W/F")
                Text("Contact Info: leader@mail.uc.edu")
                Text("Club Name: Esports")
                    .listRowBackground(Color.red)
                Text("Location: Rhodes Hall 301")
                Text("Meeting Time: 8PM M/W")
                Text("Contact Info: esportsleader@mail.uc.edu")
                Text("Club Name: IEEE")
                    .listRowBackground(Color.red)
                Text("Location: Rhodes Hall 105")
                }
                
                
           
                Text("Meeting Time: 6PM T/TH")
                Text("Contact Info: execieee@gmail.com")
                Text("Club Name: Bearcat Electric Vehicle")
                    .listRowBackground(Color.red)
                Text("Location: Evans Hall 104")
                Text("Meeting Time: 8PM W")
                Text("Contact Info: bevleader@mail.uc.edu")
                }
            .searchable(text: $searchText){
                
                
                
            }
                
                
                
                
                //Text("Rhodes Hall 201")
            
                //var x: Int = 0
                //Text(allclubs[x].name)
                
            }
            
        }//end vstack
    
    
        
         
    }//end body
            
//end view
                              


@MainActor class UISearchBar: UIView{
    
    
}

@MainActor class UITableView : UIScrollView{
                

}

func getclubs(completionHandler: @escaping ([String]?, NSError?) -> Void ) -> URLSessionTask {
    let url = URL(string: "http://ec2-18-219-134-8.us-east-2.compute.amazonaws.com/GetClubs_New.php")!
    
    var request = URLRequest(url: url)
    
    request.httpMethod = "GET"
    //request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        print("Sending request...")
        if let error = error {
            print("Error \(error)")
            return
            
        }
        
        else if let data = data{
            let myuser = String(data: data, encoding: .utf8)
           //this value contains the whole string of clubs, with information seperated by commas
            print(myuser!)
            
            //need to return this array of substrings
            //let removenewlines = myuser!.replacingOccurrences(of: "\n", with: ",")
            let components = myuser!.components(separatedBy: ",")
            print(components[0])
            completionHandler(components, nil)
    //return(userid!)
        //print([User].id
    //let res = response as? HTTPURLResponse;
    //print("res is \(res)")
        }
        else{
            print("error")
        }

        
        
    //print(userid)

    
//print(userid)
//return userid;
    }
    task.resume()
    
    //return completionHandler(nil,nil)
    return task
}

struct MyClubsView: View{
    
    //trying to traverse array find matches between memberof on myclubs struct and clubID on club struct
    
    var body: some View{
        
        Text("These are my clubs")
        VStack{
            
            /*List(zachsclubs){ myclubs in
                Text(String(myclubs.MemberOf))*/
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
        
    
}//end my clubs view

