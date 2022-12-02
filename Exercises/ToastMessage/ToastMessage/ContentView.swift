//
//  ContentView.swift
//  ToastMessage
//
//  Created by Abdullah Bilgin on 12/2/22.
//

// 1: import -> File->import package-> simpleToast (https://github.com/sanzaru/SimpleToast)
 

import SwiftUI
// 2: import simpleToast package
import SimpleToast

struct ContentView: View {
    
    // 3: Create variables
    @State private var showToast = false
    @State private var value = 0
    
    // 4: create toast option
    private let toastOption = SimpleToastOptions(
        alignment: .bottomLeading ,
        hideAfter: 2, // after 2 second close it
        // showBackdrop: false,
        backdropColor: Color.black.opacity(0.2),
        animation: .default,
        modifierType: .slide
        )
    
    var body: some View {
        
        // 5: using toast in the ui
        VStack (spacing: 20) {
            Button("Show Toast") {
                showToast.toggle()
            }
            Text("\(value)")
        }
        //
        .simpleToast(isPresented: $showToast, options: toastOption, onDismiss: {
            value += 1
        }) {
            HStack {
                Image(systemName: "leaf.fill")
                Text("This app is CO2 friendly")
                    .bold()
            }
            .padding(20)
            .background(Color.green.opacity(0.8))
            .foregroundColor(Color.white)
            .cornerRadius(14)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
