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
    @State private var adminusername: String = "ADMIN"
    @State private var adminpassword: String = "ADMIN"
    @State private var authenticationfailed: Bool = false
    
    @State var authenticated: Bool = false
    
    var body: some View{
        
        
        if !authenticated{
            ZStack{
                Color.gray.ignoresSafeArea()
                VStack{
                    
                    Text("Login")
                        .font(.system(size: 64, weight: .semibold))
                        .foregroundColor(.black)
                        .offset(y:-60)
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.black)
                        TextField("Username", text: $username)
                        
                    }
                    HStack {
                        Image(systemName: "lock")
                        SecureField("Password", text: $password)
                    }
                    //Spacer()
                    HStack{
                        Button(action: {
                            if username == adminusername && password == adminpassword{
                                self.authenticated = true
                            }
                            else{
                                authenticationfailed = true
                            }
                        }){
                            Text("LOGIN")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color.red)
                                .cornerRadius(15.0)
                                .offset(y:20)
                        }
                        
                        
                        
                    }
                    //Spacer()
                    if authenticationfailed{
                        Text("**Username and password combination not found. Please try again.**")
                            .foregroundColor(.red)
                            .padding()
                            .offset(y:20)
                        
                    }
                }
            }
            
            
        }//end if
        
        else{
            ContentView()
        }
        
    }
    
}
