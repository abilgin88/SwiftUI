//
//  fullScreenModalView.swift
//  presentNewViewUsingSheets
//
//  Created by Abdullah Bilgin on 11/29/22.
//

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.primary.edgesIgnoringSafeArea(.all)
            Button("Dismiss Modal") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct fullScreenModalView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        Text("")
//        Button("present!") {
//            isPresented.toggle()
//            print(isPresented)
//        }
//        .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
    }
}

struct fullScreenModalView_Previews: PreviewProvider {
    static var previews: some View {
        fullScreenModalView()
    }
}
