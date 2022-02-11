//
//  TaskFiles.swift
//  ShareCat
//
//  Created by Johnathan Rozier on 2/10/22.
//

import Foundation

import Foundation
import SwiftUI
import Combine

struct Task : Identifiable {
    var id = String()
    var toDoItem = String()
    
    //Add more complicated stuff later if you want.
    
}

class TaskStore : ObservableObject {
    @Published var tasks = [Task]()
}
