//
//  focusState.swift
//  dismissKeyboard
//
//  Created by Abdullah Bilgin on 11/23/22.
//
// @FocusState for iOS 15+
// This method works when you have one textfield on the screen

import SwiftUI

struct focusState: View {
    @State var name : String = ""
    
    // 1: Defining a @FocusState bool variable. Observe that we are not defining a value to it and rather just assigning it the type of Bool.
    @FocusState var isFocused : Bool
    
    var body: some View {
        VStack {
            Text("@FocusState for iOS 15+")
                .font(.headline)
                .padding()
            TextField("Enter name here", text: $name)
                .focused($isFocused) // 2: Adding the style modifier of to the textfield and assigning it the binding variable of isFocused variable.
            Button {
                isFocused = false // 3: Setting the isFocused value to false on the "Dismiss Keyboard" button click.
            } label: {
                Text("Dismiss Keyboard")
            }
        }
        .padding()
    }
}

struct focusState_Previews: PreviewProvider {
    static var previews: some View {
        focusState()
    }
}
