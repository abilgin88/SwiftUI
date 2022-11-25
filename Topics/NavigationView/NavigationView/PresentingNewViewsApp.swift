//
//  PresentingNewViewsApp.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/25/22.
//

import SwiftUI

struct PresentingNewViewsApp: View {
    var body: some View {
        
        NavigationView {
            //  pushes directly to a text view
//            NavigationLink(destination: Text("Second View")) {
//                Text("Hello, World!") // SwiftUI will automatically make the text blue to signal to users that it’s interactive
//            }
//            .navigationTitle("Navigation")
//
//            NavigationLink(destination: Text("Third View")) {
//                Image(systemName: "brain.head.profile") // If you use an image in your navigation link, you might find the image turns blue!
//            }
//            .navigationTitle("Navigation")
            
            NavigationLink(destination: Text("Forth View")) {
                Image("3")
                    .renderingMode(.original) //If you want SwiftUI to use your image’s original color, you should attach a renderingMode() modifier to it
                
            }
            .navigationTitle("Navigation")
        }
    }
}

struct PresentingNewViewsApp_Previews: PreviewProvider {
    static var previews: some View {
        PresentingNewViewsApp()
    }
}
