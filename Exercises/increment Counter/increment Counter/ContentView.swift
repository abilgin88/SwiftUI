//
//  ContentView.swift
//  increment Counter
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0

    var body: some View {
         
        VStack {
            Text("\(count)")
                .padding().font(.system(size: 40, weight: .bold))
            
            Button("Tap me!", action: {
                self.count += 1
                print("Current Tap: \(count)")
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
