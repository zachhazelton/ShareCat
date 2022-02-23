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
                VStack{
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:375 , height: 300)
            
                }
                VStack{
                    

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
                            if (send_login_request(name: username, user_password: password) != 0){
                                //print("authenticated")
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

func send_login_request(name: String, user_password: String ) -> Int{
     
    guard let url = URL(string: "http://ec2-18-219-134-8.us-east-2.compute.amazonaws.com/Login.php") else { return 0
        
    }
    print("Sending post request...")
    
    var request = URLRequest(url: url)
    
    request.httpMethod = "POST"
    
    let headers = [
      "content-type": "application/x-www-form-urlencoded",
      "cache-control": "no-cache",
      "postman-token": "c0dd01f0-da22-cd95-5fb2-aed10a3bf6cd"
    ]
    
    request.allHTTPHeaderFields = headers
    var postData = "name=\(name)".data(using: String.Encoding.utf8)!
    
    postData.append("&password=\(user_password)".data(using: String.Encoding.utf8)!)
    
    request.httpBody = postData as Data
    
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        
        guard let data = data, error == nil else {
            return
        }
            do {
                let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print("SUCCESS: \(response)")
                struct Users: Decodable {
                    let UserID: Int
                }
                //parsing the JSON to pull userID into struct (defined above)
                do {let temp = try JSONDecoder().decode(Users.self, from: data)
                    let gameData = temp.UserID
                    print("user id is: \(gameData)")
                    
                } catch { print(error) }
                //temp = response
            } catch {
                print(error)
            }
            
        }
    
    task.resume()
    
    //return get_user_id(response: temp as! String)
    //Return userID
    return 1;
}


func get_user_id(response: String) -> Int{
    
    return 1;
    
}
