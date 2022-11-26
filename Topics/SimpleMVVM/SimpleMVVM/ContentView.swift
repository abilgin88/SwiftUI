//
//  ContentView.swift
//  SimpleMVVM
//
//  Created by Abdullah Bilgin on 11/26/22.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        
        // 1: Building out the UI for our Counter
        VStack {
            Text("[Count]")
                .font(.system(size: 50, weight: .bold, design: .rounded))
                .padding()
            Button("increase") {
                
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
