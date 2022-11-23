//
//  multipleTextfields.swift
//  dismissKeyboard
//
//  Created by Abdullah Bilgin on 11/23/22.
//

import SwiftUI

struct multipleTextfields: View {
    
    // 1: Defining individual focus state variables for email and name variable
    @FocusState var isEmailFocused: Bool
    @FocusState var isNamedFocused: Bool
    
    // 2: Defining string variables for name and email field
    @State var email: String = ""
    @State var name: String = ""
    
    var body: some View {
        VStack(spacing: 20) { // 3: Defining a VStack with spacing set to 20
            
            Text("multipleTextfields")
                .font(.headline)
                .padding()
            
            // 4: Showing textfields with text and focus state set to the corresponding variable
            TextField("Enter name here", text: $name)
                .focused($isNamedFocused)
            TextField("Enter email here", text: $email)
                .focused($isEmailFocused)
            
            Button("Dismiss Current TextField") { // 5: Showing a button with text initializer. On tap, the button checks if the isNameFocused is true. If so, it toggles isNameFocused, else if checks if if email is focused and sets it to false.
                if isNamedFocused {
                    isNamedFocused = false
                } else if isEmailFocused {
                    isEmailFocused = false
                }
            }
        }.padding()
    }
}

struct multipleTextfields_Previews: PreviewProvider {
    static var previews: some View {
        multipleTextfields()
    }
}
