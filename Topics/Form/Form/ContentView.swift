//
//  ContentView.swift
//  Form
//
//  Created by Abdullah Bilgin on 11/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            
            Section {
                Text("Hello, world")
            }
            
            Section {
                Text("Hello, world")
            }
         
            Group{ // you can not add more than 10 views, Group will help
                Text("Hello, world")
                Text("Hello, world")
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
