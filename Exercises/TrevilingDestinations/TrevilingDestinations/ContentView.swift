//
//  ContentView.swift
//  TrevilingDestinations
//
//  Created by Abdullah Bilgin on 12/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack (spacing: 20){
                
                NavigationLink(destination: onlyList()) {
                    Text("Only List")
                }
                
                NavigationLink(destination: ListWithNavigation()) {
                    Text("ListWithNavigation")
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
