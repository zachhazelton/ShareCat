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


import DeadSimpleCalendar

// makeMockData() creates random number of events through provided year -> 2021
// number of events for day will change highlighting of cell
let mockEvents = DeadSimpleCalendar.makeMockData()
    
struct YourDeadSimpleCalendarView: View {
    
    
    // selected date (when user taps on date)
    @State private var selectedDate: Date = Date()
    
    // selected month index (0 -> Jan, 11 -> Dec)
    @State private var selectedMonth: Int = 0
    
    var body: some View {
        VStack{
            CalendarView(
                getEventsNumber: { date in
                    guard date != nil else { return 0 }

                    if let item = mockEvents[date!] {
                        return item
                    }
                    
                    return 0
                },
                perform: { d in
                    selectedDate = d
                },
                monthChanged: { month in
                    // can be used to update viewModel to query data for selected month
                    selectedMonth = month
                }
            )
            VStack(spacing: 5){
                Text("Selected month index: \(selectedMonth)")
                if #available(iOS 15.0, *) {
                    Text("Selected date: \(selectedDate.ISO8601Format())")
                } else {
                    // Fallback on earlier versions
                }
            }.padding()
            Spacer()
        }
    }
}
    

