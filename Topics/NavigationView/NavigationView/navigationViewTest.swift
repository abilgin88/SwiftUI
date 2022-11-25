//
//  NavigationView.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/25/22.
//

import SwiftUI

struct navigationViewTest: View {
    var body: some View {
        // 1: defining a navigationView
        NavigationView {
            // 2: defining VStack for views
            VStack {
                Text("This is a navigation View")
            }
            // 3: defining page title for for navigation view and setting it inline mode
            .navigationBarTitle("Page Title", displayMode: .inline)
            // 4: defining navigation bar for three button items
            .navigationBarItems(leading:
                                    HStack{
                Button(action: {
                    print("exit clicked")
                }) {
                    Text("Exit")
                }
            }, trailing:
                                    HStack{
                Button(action: {
                    print("Add clicked")
                }) {
                    Text("Add")
                }
                
                Button(action: {
                    print("Profile clicked")
                }) {
                    Image(systemName: "person.crop.circle.fill")
                }
                
            })
        }
     }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        navigationViewTest()
    }
}
