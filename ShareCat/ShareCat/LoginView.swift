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
                            
                            /*if username == adminusername && password == adminpassword{
                                self.authenticated = true
                            }
                            else{
                                authenticationfailed = true
                            }*/
                            if (send_login_request(name: username, user_password: password)){
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

func send_login_request(name: String, user_password: String ) -> Bool{
    
    
    // Prepare URL
     
    let url = URL(string: "ec2-18-219-134-8.us-east-2.compute.amazonaws.com/Login.php")!
        //guard let Url = Url
        //else { return }
     
    // HTTP Request Parameters which will be sent in HTTP Request Body
     
    let parameters: [String: Any] = [
            "request": [
                    "name" : name,
                    "password": user_password
            ]
        ]
    
    // Prepare URL Request Object
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
    guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else {
        //return is placeholder
        return true
    }
    
    // Set HTTP Request Body
    
    request.httpBody = httpBody
    request.timeoutInterval = 20
    
    // Perform HTTP Request
    let session = URLSession.shared
    session.dataTask(with: request) { (data, response, error) in
        if let response = response {
            print(response)
        }
        if let data = data {
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            } catch {
                print(error)
            }
        }
    }.resume()
    //return is placeholder
    return true;
}
