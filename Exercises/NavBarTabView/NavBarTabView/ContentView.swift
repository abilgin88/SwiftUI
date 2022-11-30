//
//  ContentView.swift
//  NavBarTabView
//
//  Created by Abdullah Bilgin on 11/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    // 4: Creating a tab view
        TabView {
            // 5: refer to CallsView
            CallsView()
            // badge
                .badge(10)
            
            /*
             
             ### 'badge' is only available in IOS or newer. ###
             
             if #available(IOS 15.0, *) {
                CallsView()
                    .badge(10)
                    .tabItem() {
                        Image(systemName: "phone.fill")
                        Text("Call")
                    }
             } else {
                // Fallback on earlier version
             }
             
            */
            
            // add a tab item
                .tabItem() {
                    // specify image
                    Image(systemName: "phone.fill")
                    // specify name\
                    Text("Call")
                }
            
            // 6: Copy from CallView() "Step-5"
            ContactsView()
                .tabItem() {
                    Image(systemName: "person.2.fill") // set related image
                    Text("Contacts") // set text
                }
            
            // 7: Copy from CallView() "Step-5"
            SettingView()
                .tabItem() {
                    Image(systemName: "slider.horizontal.3") // set related image
                    Text("Settings") // set text
                }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
