//
//  ContentView.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        // For simpler layouts navigation views should be the top-level thing in your view, but if you’re using them inside a TabView then the navigation view should be inside the tab view.
        NavigationView {
            Text("Hello, World")
                .navigationTitle("Navigation") // navigationTitle() modifier belongs to the text view, not to the navigation view
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
