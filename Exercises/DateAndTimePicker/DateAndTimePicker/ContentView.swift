//
//  ContentView.swift
//  DateAndTimePicker
//
//  Created by Abdullah Bilgin on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    
    // 1: Create variables:
    // 1.1: to get instant date
    @State var currentTime = Date()
    
    // 1.2 to tell people that they can pick the range date we set
    var closedRange = Calendar.current.date(byAdding: .year, value: -1, to: Date())! // guaranteed nil
    
    // 3: Create an function to format the date
    func formatDate() -> String {
        let components = Calendar.current.dateComponents([.minute, .hour, .day, .month, .year], from: currentTime)
        
        let minute = components.minute ?? 0 // guarantee the value if there is no date
        let hour = components.hour ?? 0
        let day = components.day ?? 0
        let month = components.month ?? 0
        let year = components.year ?? 0
        
        // return whatever we want to format date
        return "\(day)/\(month)/\(year) - \(hour):\(minute)"
    }
    
    var body: some View {
        
       // 2: Creating Form
        Form {
            
            // 2.1: Creating a section to pick local time and date
            Section(header: Text("Date Picker 1")) {
                
                // 2.1.1: Creating date and time picker
                DatePicker("Pick a date:", selection: $currentTime)
            }
            
            // 2.2: Creating a section to pick local time and date from the future range
            Section(header: Text("Date Picker 2")) {
                // here we add (in: Date...) means from Date() to indefinite future
                DatePicker("Pick a future date:", selection: $currentTime, in: Date()...) // "..." for indefinite future
            }
            
            // 2.3: Creating a section to pick local time and date from 1 year to Pick Date()
            Section(header: Text("Date Picker 3")) {
                // here we set picker to range from 1 year past to pick date()
                DatePicker("Pick a Past date", selection: $currentTime, in: closedRange...Date())
            }
            
            // 2.4: Creating a section to pick only hour and minute
            Section(header: Text("Date Picker 4")) {
                // using displayedComponents to show only hour and minute
                DatePicker("Pick Time", selection: $currentTime, displayedComponents: .hourAndMinute)
            }
            
            // 2.5: Creating a section to pick only date
            Section(header: Text("Date Picker 4")) {
                // using displayedComponents to show only hour and minute
                DatePicker("Pick Date", selection: $currentTime, displayedComponents: .date)
            }
            
            // 2.6: Creating a section to hide the label
            Section(header: Text("Date Picker 4")) {
                // using labelsHidden() to hide label only picker
                DatePicker("Pick Date", selection: $currentTime, displayedComponents: .date).labelsHidden()
            }
            
            // 2.7: Creating a section to show result
            Section(header: Text("Result-1")) {
                Text("\(currentTime)")
            }
            
            // 4: Creating a section to show result that formatted
            Section(header: Text("Formatted Result")) {
                Text("\(formatDate())")
            }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
