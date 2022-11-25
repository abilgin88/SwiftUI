//
//  PassingData.swift
//  NavigationView
//
//  Created by Abdullah Bilgin on 11/25/22.
//

import SwiftUI

struct PassingData: View {
    var choice: String = "Abdullah"
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("You're going to flip a coin – do you want to choose heads or tails?")
                
                NavigationLink(destination: ResultView(choice: "Heads")) {
                    Text("Choose Heads")
                }
                
                NavigationLink(destination: ResultView(choice: "Tails")) {
                    Text("Choose Tails")
                }
            }
            .navigationTitle("Navigation")
        }
        }
    }
struct PassingData_Previews: PreviewProvider {
    static var previews: some View {
        PassingData()
    }
}
