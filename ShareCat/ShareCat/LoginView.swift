//
//  LoginView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 11/17/21.
//

import Foundation
import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit




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
