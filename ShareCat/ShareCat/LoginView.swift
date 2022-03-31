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
        
        var user_id = 0
        if !authenticated{
            ZStack{
       
                VStack{
                    VStack{
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:375 , height: 300)
                
                    }
                    VStack{
                        Text("back")
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 1, height: 70)
                            .background(Color.white)
                            .cornerRadius(15.0)
                            .offset(y:20)
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
                            user_id = send_login_request(name: username, user_password: password)
                            //remove below line: for test only
                            user_id = 1
                            
                            if (user_id) != 0{
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

struct User: Decodable {
    
    var id: String
}

func send_login_request(name: String, user_password: String) -> Int{
    let userid = 0;
    let url = URL(string: "http://ec2-18-219-134-8.us-east-2.compute.amazonaws.com/Login_New.php?name=\(name)&password=\(user_password)")!
    //let url = URL(string: "http://ec2-18-219-134-8.us-east-2.compute.amazonaws.com/Login_New.php?name=zach.hazelton&password=password")!
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
            //print("Inside if statement")
            
            //print(data);
            //let myuser = try? JSONDecoder().decode([User].self, from: data)
            let myuser = String(data: data, encoding: .utf8)
            let trimmed = myuser?.components(separatedBy: .whitespacesAndNewlines).joined()
            //print("UserID:\(trimmed ?? "0").")
            
            
            //now need to convert myuser string to value of type int
            let userid = Int(trimmed!)
            print(userid!)
            //return(userid!)
                //print([User].id
            //let res = response as? HTTPURLResponse;
            //print("res is \(res)")
        }
        else {
            print("error")
        }
        }
    print(userid)

    task.resume()
    //print(userid)
    return userid;
    
}

/*
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
                if let response = response as? [String: Any] {
                    print(response)
                    //print("UserID is: \(response[])")
                    let posts = response["UserID"] as? [[String: Any]] ?? []
                    print(posts)
                }
               
                struct Users: Decodable {
                    var UserID: Int
                }
                
            } catch {
                print(error)
            }
            
        }
    
    task.resume()
    return 1;
}


func get_user_id(json: Data) -> Int{
    let decoder = JSONDecoder()
    if let jsonPetitions = try? decoder.decode(Data.self, from: json) {
        print("USERID IS \(jsonPetitions)")
    }
    return -1;
    
}
 */
