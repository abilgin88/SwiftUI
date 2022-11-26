//  ContentView.swift
//  SimpleMVVM
//  Created by Abdullah Bilgin on 11/26/22.

import SwiftUI

// 2: Building View Model
struct Counter { // Why do not use ":ObservedObject"?
    
    var value : Int = 0
    
    // increasing value functionz
    mutating func increase() { // mutating?
        value += 1
    }
    
    // decreasing value function
    mutating func decrease() {
        value -= 1
    }
    
    // set value to 0 function
    mutating func clear() {
        value = 0
        //    }
    }
}

struct ContentView: View {
    
    // 3: create state object: ContentView SOURCE -> where going to read updates from
   @State private var counter = Counter()
    
    var body: some View {
        
        // 1: Building out the UI for our Counter
        VStack {
            // 5: link content.value from struct to ContentView -> Text
            Text("\(counter.value)") // use string interpolation here because "value" is an integer so we can not directly pass it
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .padding()
            
            // for horizontal views
            HStack {
                Button("increase") {
                    // 4: use increase function
                    counter.increase()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("decrease") {
                    // 4: use decrease function
                    counter.decrease()
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
            }
            
            Button("clear") {
                // 4: use clear function
                counter.clear()
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
