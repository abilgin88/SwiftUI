//
//  ContentView.swift
//  PasswordChecker
//
//  Created by Abdullah Bilgin on 12/1/22.
//

import SwiftUI

struct ContentView: View {
    
    // 1: Defining variable
    @State var password: String = ""
    @State var passwordStrength: Int = 0
    
    // 2: Defining a function to check password strength
    func checkStrength(_ password: String) -> Int {
        let passwordLength = password.count
        var containSymbol = false
        var containUppercase = false
        
        // to check each character
        for character in password {
            // check UpperCase
            if "ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(character) {
                containUppercase = true
            }
            // check Symbol
            if "!£$%&/()=?^;:_ç°§*,.-_".contains(character) {
                containSymbol = true
            }
        }
        
        // get the result by conditional
        if (passwordLength > 8) && containSymbol && containUppercase {
            return 1
        } else {
            return 0
        }
    }
    
    var body: some View {
        
        // 3: Creating UI
        VStack {
            // to get information by user
            Text("How strong is your Password?")
                .padding()
            TextField("Enter your password:", text: $password)
                .textFieldStyle(.roundedBorder)
                .frame(width: 250)
            
            // show result to user
            if checkStrength(password) == 0 {
                Text("Weak")
                    .foregroundColor(Color.red)
                    .font(.system(size: 30))
                    .padding()
            } else {
                Text("Strong")
                    .foregroundColor(Color.green)
                    .font(.system(size: 30))
                    .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
