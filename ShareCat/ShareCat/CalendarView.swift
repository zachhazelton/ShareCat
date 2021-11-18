//
//  CalendarView.swift
//  ShareCat
//
//  Created by Zachary Hazelton on 11/17/21.
//

import Foundation
import SwiftUI
import MapKit
import UIKit
import EventKit


struct CalendarView: View{
    var body: some View{
        Text("This is the Calendar View")
    }
}



struct EventLocation {
    let title: String
    let latitude: Double
    let longitude: Double
}

public struct CalendarEvent {
    public let title: String
    public let startDate: Date
    public let endDate:Date
    
    public init(title: String, startDate: Date, endDate: Date) {
        self.title = title;
        self.startDate = startDate;
        self.endDate = endDate;
    }
}

public protocol CalendarViewDataSource {
    func startDate() -> Date
    func endDate() -> Date
    /* optional */
    func headerString(_ date: Date) -> String?
}

extension CalendarViewDataSource {
    
    func startDate() -> Date {
        return Date()
    }
    func endDate() -> Date {
        return Date()
    }
    
    func headerString(_ date: Date) -> String? {
        return nil
    }
    }
