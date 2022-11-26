//
//  ContentView.swift
//  SimpleMVVM
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import SwiftUI

// 2: Building View Model
struct Counter { // Why do not use ":ObservedObject"?

    var value : Int = 0
    
    mutating func increase() { // mutating?
        value += 1
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
            Button("increase") {
                // 4: use increase function
                counter.increase()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
