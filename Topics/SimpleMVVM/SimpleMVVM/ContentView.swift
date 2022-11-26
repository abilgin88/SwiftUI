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

// 6: View model (rb model) marked with "final": no other class can try subclass it. \
// ***CLASSES ARE REFERENCE TYPE***
// observable object protocol: if you want to observe changes to a property:

final class CounterViewModel: ObservableObject {
    
    @Published private(set) var value: Int = 0
    // @Published: you need to use publish property wrapper  before  variable -> here we want to observe changes to our "value". we are now able to observe changes to this value
    
    // private(set): there is some views where it needs access to have access to it, it can read  and write to it. but in this case we are only reading to it within a text(Body-> Vstack->Text). So there is no need for us to expose it, so someone can change it which is why i am closing it off with the "private(set)"
    // So this is just essentially means that: WITHIN THIS FILE YOU CAN CHANGE AND READ IT ANY OBJECT, OUTSIDE OF THIS SCOPE ONLY READ THIS VALUE
    
    // increasing value function
    func increase() { // mutating?
        value += 1
    }
    // only difference from struct is we do not use "MUTATING": We don't use mutating with classes because we are able to update a reference to itself.
    
    // decreasing value function
    func decrease() {
        value -= 1
    }
    
    // set value to 0 function
    func clear() {
        value = 0
        //    }
    }
    
   
    
}

struct ContentView: View {
    
    // 3: create state object: ContentView SOURCE -> where going to read updates from
    // @State private var counter = Counter()
    
    // 7: create an instance of view model (from step-6)
    //  @StateObject: property wrapper ->
    @StateObject private var vm = CounterViewModel()
    // now we've got an instance of our observable object source of truth that our views can actually read from here.
    
    
    // in order to actually inject this into multiple views we now need to use  the ENVIRONMENT OBJECT PROPERTY WRAPPER
    
    var body: some View {
        
        // 1: Building out the UI for our Counter
        VStack {
            // 5: link content.value from struct to ContentView -> Text
            Text("\(vm.value)") // use string interpolation here because "value" is an integer so we can not directly pass it
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .padding()
            
            // for horizontal views
            HStack {
                Button("increase") {
                    // 4: use increase function
                    vm.increase()
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("decrease") {
                    // 4: use decrease function
                    vm.decrease()
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
            }
            
            Button("clear") {
                // 4: use clear function
                vm.clear()
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
