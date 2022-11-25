//
//  ContentView.swift
//  dismissKeyboard
//
//  Created by Abdullah Bilgin on 11/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                NavigationLink(destination: focusState()) {
                    Text("Focus State")
                }
                
                NavigationLink(destination: optionalEnum()) {
                    Text("Optional Enum")
                }
                
                NavigationLink(destination: DelegateMethodsView()) {
                    Text("Delegate Methods View")
                }
                
                NavigationLink(destination: multipleTextfields()) {
                    Text("Multiple Text Fields")
                }
                
                NavigationLink(destination: onTapGestureView()) {
                    Text("On Tap Gesture View")
                }
                
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
