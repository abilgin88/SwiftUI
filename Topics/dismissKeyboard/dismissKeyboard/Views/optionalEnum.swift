//
//  optionalEnum.swift
//  dismissKeyboard
//
//  Created by Abdullah Bilgin on 11/24/22.
//
//For more advanced uses, you can use @FocusState to track an optional enum case that determines which form field is currently focused.

import SwiftUI

struct optionalEnum: View {
    
    enum Field {
        case firstName
        case lastName
        case emailAddress
    }
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @FocusState private var focusField: Field?
    
    var body: some View {
        VStack {
            Text("Optional Enum Case")
                .font(.headline)
                .padding()
            
            TextField("Enter your first name", text: $firstName)
                .focused($focusField, equals: .firstName)
                .textContentType(.givenName) //?
                .submitLabel(.next) //?
            TextField("Enter your last name", text: $lastName)
                .focused($focusField, equals: .lastName)
                .textContentType(.familyName)
                .submitLabel(.next)
            TextField("Enter your email address", text: $emailAddress)
                .focused($focusField, equals: .emailAddress)
                .textContentType(.emailAddress)
                .submitLabel(.join)
        }
        .padding()
        .onSubmit {
            switch focusField {
            case .firstName:
                focusField = .lastName
            case .lastName:
                focusField = .emailAddress
            default:
                print("Creating account...")
            }
        }
    }
}

struct optionalEnum_Previews: PreviewProvider {
    static var previews: some View {
        optionalEnum()
    }
}
