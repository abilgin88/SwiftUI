//
//  onTapGestureView.swift
//  dismissKeyboard
//
//  Created by Abdullah Bilgin on 11/23/22.

// In the code below, when the user taps anywhere on the VStack, the keyboard will be dismissed

import SwiftUI

// *** You cannot declare an extension inside of anything - inside a class declaration, inside a struct declaration, etc. i declared in the struct and i got an error:)

// Create an extension
extension View {
    
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct onTapGestureView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        //Call the function in your View: call the method in your View onTapGesture:
        VStack {
            Text("On Tap Gesture")
                .font(.headline)
                .padding()
            TextField("Email Address", text: $email)
            SecureField("Password", text: $password)
            
            Button(action: {
                
            }) {
                Text("Sign in")
                    .fontWeight(.semibold)
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
        .padding()
        .background(.yellow)
    }
}

struct onTapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        onTapGestureView()
    }
}
