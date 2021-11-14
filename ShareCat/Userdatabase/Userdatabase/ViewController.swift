//
//  ViewController.swift
//  Userdatabase
//
//  Created by Dubem on 11/14/21.
//  Copyright © 2021 Dubem. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController{
    
    var db: OpaquePointer?

    
    @IBOutlet weak var tableViewHeroes: UITableView!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldMnumber: UITextField!
    
    
    @IBAction func buttonSave(_sender: UIButton) {
        
    }
    

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //the database file
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("UserDatabase.sqlite")
        
        
        //opening the database
        if sqlite3_open(fileURL.path, &amp;db) != SQLITE_OK {
        print("error opening database")
        }
        
        //creating table
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, Mnumber INTEGER)", nil, nil, nil) != SQLITE_OK {
        let errmsg = String(cString: sqlite3_errmsg(db)!)
        print("error creating table: \(errmsg)")
       }
        
        


   }
}



