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
    @State private var tipIndex = 2
    let tipPercentage = [0, 5, 10, 15, 20]
    
    // 2: Create a calculation function
    func calculationTotal() -> Double {
        let tip = Double(tipPercentage[tipIndex])
        let orderTotal = Double(totalCost) ?? 0 // if we can not take int set by default to 0
        let finalAmount = ((orderTotal / 100 * tip) + orderTotal)
        
        return finalAmount / Double(people)
    }
    

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
