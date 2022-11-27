//
//  ContentView.swift
//  Alert
//
//  Created by Abdullah Bilgin on 11/27/22.
//

import SwiftUI

struct ContentView: View {
    
    // 1: Creating Variable
    @State var showAlert: Bool = false
    @State var count: Int = 0
    
    var body: some View {
        
        // 2: Create UI
        VStack {
            Text("\(count)") // showing count
                .padding()
                .font(.system(size:40, weight: .bold))
            
            Button("Increment") { // button for increment and set show alert to true
                showAlert = true
            }
            .alert(isPresented: $showAlert) { // using alert property for button
                Alert( // setting Alert properties
                    title: Text("Are you Sure?"),
                    message: Text("Are you sure you want to add 1 to the count?"),
                    primaryButton: .default(Text("Add One")) {
                        self.count += 1
                },
                    secondaryButton: .cancel() {
                        print("Canceling action...")
                    })
        }
    }
}
                    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
