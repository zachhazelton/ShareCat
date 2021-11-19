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

struct ClubsView: View{
    
    
    var body: some View{
        //Text("This is the clubs view")
        //Text("This is the clubs view")
        
        VStack{
            
            Text("Clubs")
                .bold()
                .font(.system(size: 30))
                .foregroundColor(.white)
                .frame(width: 300, height: 55)
                .background(Color.red)
                .cornerRadius(15.0)
            
            NavigationLink(destination: MyClubsView(), label: {
                Text("My Clubs")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(15.0)
            })
            
            UITableView{
                
                
            }
            
            
            
        }
        
        
        
    }
}//end view


@MainActor class UISearchBar: UIView{
    
    
}

struct MyClubsView: View{
    var body: some View{
        Text("These are my clubs")
    }
    
}

