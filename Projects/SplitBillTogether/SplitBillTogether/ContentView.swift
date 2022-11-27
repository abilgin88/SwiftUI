//
//  ContentView.swift
//  SplitBillTogether
//
//  Created by Abdullah Bilgin on 11/27/22.
//

import SwiftUI

struct ContentView: View {
    
    // 1: Creating variables:
    @State private var totalCost = ""
    @State private var people = 4
    @State private var tipIndex = 1
    let tipPercentage = [0, 5, 10, 15, 20]
    
    // 2: Create a calculation function
    func calculationTotal() -> Double {
        let tip = Double(tipPercentage[tipIndex])
        let orderTotal = Double(totalCost) ?? 0 // if we can not take int set by default to 0
        let finalAmount = ((orderTotal / 100 * tip) + orderTotal)
        
        return finalAmount / Double(people)
    }
    

    var body: some View {
        // 3: Creating UI
        NavigationView {
            Form {
                Section(header: Text("Enter an amount")) {
                    TextField("Amount", text: $totalCost)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Select a tip amount (%)")) {
                    Picker("Tip percentage", selection: $tipIndex) {
                        ForEach(0 ..< tipPercentage.count) {
                            Text("\(tipPercentage[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("How many People?")) {
                    Picker("Number of people", selection: $people) {
                        ForEach(0 ..< 25) {
                            Text("\($0)")
                        }
                    }
                }
                Section(header: Text("Total per person")) {
                    Text("$ \(calculationTotal(), specifier: "%.1f")")
                }
            }
            .navigationTitle("Split the Bill Together")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
