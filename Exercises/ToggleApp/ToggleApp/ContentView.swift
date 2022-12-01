//
//  ContentView.swift
//  ToggleApp
//
//  Created by Abdullah Bilgin on 12/1/22.
//

import SwiftUI

struct ContentView: View {
    
    // 1: Defining variables
    @State private var isUppercase = false
    @State private var isReversed = false
    @State private var text = "Subscribe to Code Palace"
    
    // 3: Creating a function to reverse text and make uppercase
    
    func changeText(_ input: String) -> String {
        var newString = isUppercase ? input.uppercased() : input
        
        if isReversed {
            newString = String(newString.reversed())
        }
        
        return newString
    }
    
    var body: some View {
        
        //2: Design and creating UI
        VStack {
            // creating toggle
            Toggle("Make text Uppercase" ,isOn: $isUppercase)
            Toggle("Reverse text", isOn: $isReversed)
                // Designing Toggle
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            // 4: Calling the function and set text as a parameter
            Text("\(changeText(text))")
                .padding()
                .font(.system(size: 20, weight: .bold))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
