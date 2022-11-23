//
//  DelegateMethodsView.swift
//  dismissKeyboard
//
//  Created by Abdullah Bilgin on 11/23/22.
//

import SwiftUI

struct DelegateMethodsView: View {
    @State var name : String = ""

    func dismissKeyboard() {
        UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.endEditing(true) // 4: Defining dismissKeyboard() function which ends editing on UIApplication.
    }
    
    var body: some View {
        VStack {
            Text("Using App Delegate Methods")
                .font(.headline)
                .padding()
            TextField("Enter name here", text: $name)
            Button {
                dismissKeyboard() // 1: Calling the dismiss keyboard method on the click of "Dismiss Keyboard" button.
            } label : {
                Text("Dismiss Keyboard") // 2: Setting a label of text "Dismiss Keyboard" of the button.
            }
        }.padding() // 3: Adding padding to the view.
    }
}

struct DelegateMethodsView_Previews: PreviewProvider {
    static var previews: some View {
        DelegateMethodsView()
    }
}
